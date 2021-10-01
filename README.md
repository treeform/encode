# Encode

`nimble install encode`

![Github Actions](https://github.com/treeform/encode/workflows/Github%20Actions/badge.svg)

[API reference](https://nimdocs.com/treeform/encode)

This library has no dependencies other than the Nim standard libarary.

## About

This is a "pure" module with a stricter API utf8, utf16, and utf32 focused API.
Aimed to be a better version of the `encodings` module.
Because:
* Does not depend on `libiconv` or `windows API`.
* On windows it supports UTF16 big endian.
* API is more clear.
