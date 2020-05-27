import unicode, streams

func maybeSwap(u: uint16, swap: bool): uint16 =
  if swap:
    ((u and 0xFF) shl 8) or ((u and 0xFF00) shr 8)
  else:
    u

proc toUTF16Inner(input: string, swap: bool, bom: bool): string =
  ## Converts UTF8 to UTF16.
  var s = newStringStream(input)
  if bom:
    s.write(0xFEFF.uint16.maybeSwap(swap))
  for r in input.runes:
    let u = r.uint32
    if (0x0000 <= u and u <= 0xD7FF) or (0xE000 <= u and u <= 0xFFFF):
      s.write(u.uint16.maybeSwap(swap))
    elif 0x010000 <= u and u <= 0x10FFFF:
      let
        u0 = u - 0x10000
        w1 = 0xD800 + u0 div 0x400
        w2 = 0xDC00 + u0 mod 0x400
      s.write(w1.uint16.maybeSwap(swap))
      s.write(w2.uint16.maybeSwap(swap))
  s.setPosition(0)
  return s.readAll()

proc toUTF16LE*(input: string): string =
  ## Converts UTF8 to UTF16 LE string.
  toUTF16Inner(input, false, false)

proc toUTF16BE*(input: string): string =
  ## Converts UTF8 to UTF16 BE string.
  toUTF16Inner(input, true, false)

proc toUTF16LEWithBom*(input: string): string =
  ## Converts UTF8 to UTF16 LE with byte order mark string.
  toUTF16Inner(input, false, true)

proc toUTF16BEWithBom*(input: string): string =
  ## Converts UTF8 to UTF16 BE with byte order mark string.
  toUTF16Inner(input, true, true)

proc fromUTF16Inner(s: StringStream, swap: bool): string =
  ## Converts UTF16 Big Endian to UTF8 string.
  while not s.atEnd():
    var u1 = s.readUInt16().maybeSwap(swap)
    if u1 - 0xd800 >= 0x800:
      result.add Rune(u1.int)
    else:
      var u2 = s.readUInt16().maybeSwap(swap)
      if ((u1 and 0xfc00) == 0xd800) and ((u2 and 0xfc00) == 0xdc00):
        result.add Rune((u1.uint32 shl 10) + u2.uint32 - 0x35fdc00)
      else:
        # Error, produce tofu character.
        result.add "□"

proc fromUTF16*(input: string): string =
  ## Converts UTF16 trying to read byte order marker to UTF8 string.
  var
    s = newStringStream(input)
    swap: bool = false
  # Deal with Byte Order Mark
  let bom = s.readUInt16()
  if bom == 0xFEFF: swap = false
  elif bom == 0xFFFE: swap = true
  else: s.setPosition(0)
  s.fromUTF16Inner(swap)

proc fromUTF16BE*(input: string): string =
  ## Converts UTF16 Big Endian to UTF8 string.
  var s = newStringStream(input)
  s.fromUTF16Inner(true)

proc fromUTF16LE*(input: string): string =
  ## Converts UTF16 Little Endian to UTF8 string.
  var s = newStringStream(input)
  s.fromUTF16Inner(false)

proc toUTF32*(input: string): string =
  ## Converts UTF8 string to utf32.
  var s = newStringStream(input)
  for r in input.runes:
    s.write(r.uint32)
  s.setPosition(0)
  return s.readAll()

proc fromUTF32*(input: string): string =
  ## Converts utf32 to UTF8 string.
  var s = newStringStream(input)
  while not s.atEnd():
    result.add Rune(s.readUInt32())
