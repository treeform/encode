# Endocde

The `encodings` module depends on `libiconv` or `windows API`.
Its not a "pure" module.

This is a "pure" module with a stricter API utf8, utf16, and utf32 focused API.

# API: encode

```nim
import encode
```

## **proc** toUTF16LE

Converts UTF8 to UTF16 LE string.

```nim
proc toUTF16LE(input: string): string {.raises: [Defect, IOError, OSError],                                 tags: [WriteIOEffect, ReadIOEffect].}
```

## **proc** toUTF16BE

Converts UTF8 to UTF16 BE string.

```nim
proc toUTF16BE(input: string): string {.raises: [Defect, IOError, OSError],                                 tags: [WriteIOEffect, ReadIOEffect].}
```

## **proc** toUTF16LEWithBom

Converts UTF8 to UTF16 LE with byte order mark string.

```nim
proc toUTF16LEWithBom(input: string): string {.raises: [Defect, IOError, OSError], tags: [WriteIOEffect, ReadIOEffect].}
```

## **proc** toUTF16BEWithBom

Converts UTF8 to UTF16 BE with byte order mark string.

```nim
proc toUTF16BEWithBom(input: string): string {.raises: [Defect, IOError, OSError], tags: [WriteIOEffect, ReadIOEffect].}
```

## **proc** fromUTF16

Converts UTF16 trying to read byte order marker to UTF8 string.

```nim
proc fromUTF16(input: string): string {.raises: [Defect, IOError, OSError],                                 tags: [ReadIOEffect].}
```

## **proc** fromUTF16BE

Converts UTF16 Big Endian to UTF8 string.

```nim
proc fromUTF16BE(input: string): string {.raises: [Defect, IOError, OSError],                                   tags: [ReadIOEffect].}
```

## **proc** fromUTF16LE

Converts UTF16 Little Endian to UTF8 string.

```nim
proc fromUTF16LE(input: string): string {.raises: [Defect, IOError, OSError],                                   tags: [ReadIOEffect].}
```

## **proc** toUTF32

Converts UTF8 string to utf32.

```nim
proc toUTF32(input: string): string {.raises: [Defect, IOError, OSError],                               tags: [WriteIOEffect, ReadIOEffect].}
```

## **proc** fromUTF32

Converts utf32 to UTF8 string.

```nim
proc fromUTF32(input: string): string {.raises: [Defect, IOError, OSError],                                 tags: [ReadIOEffect].}
```

