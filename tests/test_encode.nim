import encode

const
  utf8 = readFile("tests/utf8.txt")
  utf16be = readFile("tests/utf16be.txt")
  utf16le = readFile("tests/utf16le.txt")
  utf32 = "h\0\0\0i\0\0\0 \0\0\0t\0\0\0h\0\0\0e\0\0\0r\0\0\0e\0\0\0 \0\0\0h\0\0\0o\0\0\0w\0\0\0 \0\0\0a\0\0\0r\0\0\0e\0\0\0 \0\0\0y\0\0\0o\0\0\0u\0\0\0?\0\0\0"

block:
  echo "UTF 16"
  assert utf16be.fromUTF16() == utf16le.fromUTF16()
  assert utf16be.fromUTF16() == utf8
  assert utf16le.fromUTF16() == utf8

block:
  echo "UTF 32"
  assert "hi there how are you?".toUTF32() == utf32
  assert "hi there how are you?" == utf32.fromUTF32()
  assert utf8.toUTF32().fromUTF32() == utf8

block:
  echo "UTF 16 LE"
  assert utf8.toUTF16LE().fromUTF16LE() == utf8

block:
  echo "UTF 16 BE"
  assert utf8.toUTF16BE().fromUTF16BE() == utf8

block:
  echo "UTF 16 BE with Bom"
  assert utf8.toUTF16BEWithBom() == utf16be

block:
  echo "UTF 16 LE with Bom"
  assert utf8.toUTF16LEWithBom() == utf16le