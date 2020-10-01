# Encode

This is a "pure" module with a stricter API utf8, utf16, and utf32 focused API.
Aimed to be a better version of the `encodings` module.
Because:
* Does not depend on `libiconv` or `windows API`.
* On windows it supports UTF16 big endian.
* API is more clear.

# API: encode

```nim
import encode
```

## **proc** toUTF16LE

Converts UTF8 to UTF16 LE string.

```nim
proc toUTF16LE(input: string): string
```

## **proc** toUTF16BE

Converts UTF8 to UTF16 BE string.

```nim
proc toUTF16BE(input: string): string
```

## **proc** toUTF16LEWithBom

Converts UTF8 to UTF16 LE with byte order mark string.

```nim
proc toUTF16LEWithBom(input: string): string
```

## **proc** toUTF16BEWithBom

Converts UTF8 to UTF16 BE with byte order mark string.

```nim
proc toUTF16BEWithBom(input: string): string
```

## **proc** fromUTF16

Converts UTF16 trying to read byte order marker to UTF8 string.

```nim
proc fromUTF16(input: string): string
```

## **proc** fromUTF16BE

Converts UTF16 Big Endian to UTF8 string.

```nim
proc fromUTF16BE(input: string): string
```

## **proc** fromUTF16LE

Converts UTF16 Little Endian to UTF8 string.

```nim
proc fromUTF16LE(input: string): string
```

## **proc** toUTF32

Converts UTF8 string to utf32.

```nim
proc toUTF32(input: string): string
```

## **proc** fromUTF32

Converts utf32 to UTF8 string.

```nim
proc fromUTF32(input: string): string
```
