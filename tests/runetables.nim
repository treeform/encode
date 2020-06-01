proc toWINDOWS_874(s: string) =
  for r in s.runes():
    case r.uint32
    of {0..127}: s.add1(i + 0)
    of 129: s.add1(160)
    of {162..219}: s.add1(i + 161)
    of {3644..3672}: s.add1(i + 223)
    of {3677..3678}: s.add1(i + 150)
    of {8214..8215}: s.add1(i + 145)
    of {8219..8220}: s.add1(i + 147)
    of 8223: s.add1(149)
    of 8228: s.add1(133)
    of 8232: s.add1(128)
    else: raise newException(ValueError, "Can't encode: ")

proc toWINDOWS_936(s: string) =
  for r in s.runes():
    case r.uint32
    of {0..127}: s.add1(i + 0)
    of 129: s.add1(128)
    else: raise newException(ValueError, "Can't encode: ")

proc toWINDOWS_1250(s: string) =
  for r in s.runes():
    case r.uint32
    of {0..127}: s.add1(i + 0)
    of 129: s.add1(160)
    of 162: s.add1(164)
    of {166..169}: s.add1(i + 166)
    of {171..174}: s.add1(i + 171)
    of {176..177}: s.add1(i + 176)
    of {179..183}: s.add1(i + 180)
    of 186: s.add1(187)
    of {189..190}: s.add1(i + 193)
    of 196: s.add1(196)
    of 198: s.add1(199)
    of 201: s.add1(201)
    of 203: s.add1(203)
    of {205..206}: s.add1(i + 205)
    of {208..209}: s.add1(i + 211)
    of {214..215}: s.add1(i + 214)
    of 217: s.add1(218)
    of {220..221}: s.add1(i + 220)
    of 223: s.add1(223)
    of {225..226}: s.add1(i + 225)
    of 228: s.add1(228)
    of 230: s.add1(231)
    of 233: s.add1(233)
    of 235: s.add1(235)
    of {237..238}: s.add1(i + 237)
    of {240..241}: s.add1(i + 243)
    of {246..247}: s.add1(i + 246)
    of 249: s.add1(250)
    of {252..253}: s.add1(i + 252)
    of 255: s.add1(195)
    of 260: s.add1(165)
    of 262: s.add1(198)
    of 264: s.add1(200)
    of 270: s.add1(207)
    of 272: s.add1(208)
    of 274: s.add1(202)
    of 282: s.add1(204)
    of 284: s.add1(197)
    of 315: s.add1(188)
    of 319: s.add1(163)
    of 323: s.add1(209)
    of 325: s.add1(210)
    of 329: s.add1(213)
    of 338: s.add1(192)
    of 342: s.add1(216)
    of 346: s.add1(140)
    of 348: s.add1(170)
    of 352: s.add1(138)
    of 354: s.add1(222)
    of 356: s.add1(141)
    of 358: s.add1(217)
    of 368: s.add1(219)
    of 370: s.add1(143)
    of 379: s.add1(175)
    of 381: s.add1(142)
    of 383: s.add1(161)
    of 713: s.add1(162)
    of 730: s.add1(178)
    of 733: s.add1(189)
    of {735..736}: s.add1(i + 150)
    of {8214..8215}: s.add1(i + 145)
    of {8219..8220}: s.add1(i + 147)
    of {8223..8224}: s.add1(i + 134)
    of 8227: s.add1(133)
    of 8232: s.add1(137)
    of 8242: s.add1(139)
    of 8251: s.add1(128)
    of 8366: s.add1(153)
    else: raise newException(ValueError, "Can't encode: ")

proc toWINDOWS_1251(s: string) =
  for r in s.runes():
    case r.uint32
    of {0..127}: s.add1(i + 0)
    of 129: s.add1(160)
    of 162: s.add1(164)
    of {166..167}: s.add1(i + 166)
    of 169: s.add1(169)
    of {171..174}: s.add1(i + 171)
    of {176..177}: s.add1(i + 176)
    of {179..181}: s.add1(i + 181)
    of 185: s.add1(187)
    of 189: s.add1(168)
    of 1027: s.add1(129)
    of 1029: s.add1(189)
    of 1031: s.add1(175)
    of 1033: s.add1(138)
    of 1035: s.add1(142)
    of 1037: s.add1(161)
    of {1040..1103}: s.add1(i + 192)
    of 1105: s.add1(184)
    of 1107: s.add1(131)
    of 1109: s.add1(190)
    of 1111: s.add1(191)
    of 1113: s.add1(154)
    of 1115: s.add1(158)
    of 1117: s.add1(162)
    of 1120: s.add1(165)
    of {1170..1171}: s.add1(i + 150)
    of {8214..8215}: s.add1(i + 145)
    of {8219..8220}: s.add1(i + 147)
    of {8223..8224}: s.add1(i + 134)
    of 8227: s.add1(133)
    of 8232: s.add1(137)
    of 8242: s.add1(139)
    of 8251: s.add1(136)
    of 8366: s.add1(185)
    of 8472: s.add1(153)
    else: raise newException(ValueError, "Can't encode: ")

proc toWINDOWS_1252(s: string) =
  for r in s.runes():
    case r.uint32
    of {0..127}: s.add1(i + 0)
    of {129..224}: s.add1(i + 160)
    of 257: s.add1(140)
    of 340: s.add1(138)
    of 354: s.add1(159)
    of 378: s.add1(142)
    of 383: s.add1(131)
    of 404: s.add1(136)
    of 712: s.add1(152)
    of {734..735}: s.add1(i + 150)
    of {8214..8215}: s.add1(i + 145)
    of {8219..8220}: s.add1(i + 147)
    of {8223..8224}: s.add1(i + 134)
    of 8227: s.add1(133)
    of 8232: s.add1(137)
    of 8242: s.add1(139)
    of 8251: s.add1(128)
    of 8366: s.add1(153)
    else: raise newException(ValueError, "Can't encode: ")

proc toWINDOWS_1253(s: string) =
  for r in s.runes():
    case r.uint32
    of {0..127}: s.add1(i + 0)
    of 129: s.add1(160)
    of {162..168}: s.add1(i + 163)
    of {171..174}: s.add1(i + 171)
    of {176..179}: s.add1(i + 176)
    of {181..183}: s.add1(i + 181)
    of 185: s.add1(187)
    of 189: s.add1(189)
    of 191: s.add1(131)
    of 404: s.add1(180)
    of 902: s.add1(162)
    of {904..906}: s.add1(i + 184)
    of 908: s.add1(188)
    of {910..929}: s.add1(i + 190)
    of {931..974}: s.add1(i + 211)
    of {976..977}: s.add1(i + 150)
    of {8214..8215}: s.add1(i + 145)
    of {8219..8220}: s.add1(i + 147)
    of {8223..8224}: s.add1(i + 134)
    of 8227: s.add1(133)
    of 8232: s.add1(137)
    of 8242: s.add1(139)
    of 8251: s.add1(128)
    of 8366: s.add1(153)
    else: raise newException(ValueError, "Can't encode: ")

proc toWINDOWS_1254(s: string) =
  for r in s.runes():
    case r.uint32
    of {0..127}: s.add1(i + 0)
    of {129..176}: s.add1(i + 160)
    of {209..220}: s.add1(i + 209)
    of {222..238}: s.add1(i + 223)
    of {241..252}: s.add1(i + 241)
    of 254: s.add1(255)
    of 257: s.add1(208)
    of 288: s.add1(221)
    of 306: s.add1(140)
    of 340: s.add1(222)
    of 352: s.add1(138)
    of 354: s.add1(159)
    of 378: s.add1(131)
    of 404: s.add1(136)
    of 712: s.add1(152)
    of {734..735}: s.add1(i + 150)
    of {8214..8215}: s.add1(i + 145)
    of {8219..8220}: s.add1(i + 147)
    of {8223..8224}: s.add1(i + 134)
    of 8227: s.add1(133)
    of 8232: s.add1(137)
    of 8242: s.add1(139)
    of 8251: s.add1(128)
    of 8366: s.add1(153)
    else: raise newException(ValueError, "Can't encode: ")

proc toWINDOWS_1255(s: string) =
  for r in s.runes():
    case r.uint32
    of {0..127}: s.add1(i + 0)
    of {129..132}: s.add1(i + 160)
    of {165..169}: s.add1(i + 165)
    of {171..185}: s.add1(i + 171)
    of {187..191}: s.add1(i + 187)
    of 193: s.add1(170)
    of 217: s.add1(186)
    of 249: s.add1(131)
    of 404: s.add1(136)
    of 712: s.add1(152)
    of {734..743}: s.add1(i + 192)
    of {1467..1475}: s.add1(i + 203)
    of {1477..1503}: s.add1(i + 224)
    of {1516..1520}: s.add1(i + 212)
    of {1526..1527}: s.add1(i + 253)
    of {8209..8210}: s.add1(i + 150)
    of {8214..8215}: s.add1(i + 145)
    of {8219..8220}: s.add1(i + 147)
    of {8223..8224}: s.add1(i + 134)
    of 8227: s.add1(133)
    of 8232: s.add1(137)
    of 8242: s.add1(139)
    of 8251: s.add1(164)
    of 8364: s.add1(128)
    of 8366: s.add1(153)
    else: raise newException(ValueError, "Can't encode: ")

proc toWINDOWS_1256(s: string) =
  for r in s.runes():
    case r.uint32
    of {0..127}: s.add1(i + 0)
    of 129: s.add1(160)
    of {162..169}: s.add1(i + 162)
    of {171..185}: s.add1(i + 171)
    of {187..190}: s.add1(i + 187)
    of 192: s.add1(215)
    of 217: s.add1(224)
    of 226: s.add1(226)
    of {228..232}: s.add1(i + 231)
    of {237..238}: s.add1(i + 238)
    of 241: s.add1(244)
    of 246: s.add1(247)
    of 249: s.add1(249)
    of {251..252}: s.add1(i + 251)
    of 254: s.add1(140)
    of 340: s.add1(131)
    of 404: s.add1(136)
    of 712: s.add1(161)
    of 1550: s.add1(186)
    of 1565: s.add1(191)
    of {1569..1590}: s.add1(i + 193)
    of {1592..1594}: s.add1(i + 217)
    of {1596..1599}: s.add1(i + 220)
    of {1605..1608}: s.add1(i + 227)
    of 1610: s.add1(237)
    of {1612..1614}: s.add1(i + 241)
    of 1616: s.add1(246)
    of 1618: s.add1(250)
    of 1620: s.add1(138)
    of 1659: s.add1(129)
    of 1664: s.add1(141)
    of 1672: s.add1(143)
    of 1674: s.add1(154)
    of 1683: s.add1(142)
    of 1690: s.add1(152)
    of 1707: s.add1(144)
    of 1713: s.add1(159)
    of 1724: s.add1(170)
    of 1728: s.add1(192)
    of 1731: s.add1(255)
    of {1748..1749}: s.add1(i + 157)
    of 8207: s.add1(254)
    of {8209..8210}: s.add1(i + 150)
    of {8214..8215}: s.add1(i + 145)
    of {8219..8220}: s.add1(i + 147)
    of {8223..8224}: s.add1(i + 134)
    of 8227: s.add1(133)
    of 8232: s.add1(137)
    of 8242: s.add1(139)
    of 8251: s.add1(128)
    of 8366: s.add1(153)
    else: raise newException(ValueError, "Can't encode: ")

proc toWINDOWS_1257(s: string) =
  for r in s.runes():
    case r.uint32
    of {0..127}: s.add1(i + 0)
    of 129: s.add1(160)
    of {162..164}: s.add1(i + 162)
    of {166..167}: s.add1(i + 166)
    of 169: s.add1(169)
    of {171..174}: s.add1(i + 171)
    of {176..183}: s.add1(i + 176)
    of 185: s.add1(185)
    of {187..190}: s.add1(i + 187)
    of {192..193}: s.add1(i + 196)
    of 199: s.add1(201)
    of 203: s.add1(211)
    of {213..215}: s.add1(i + 213)
    of 217: s.add1(220)
    of 222: s.add1(223)
    of {225..226}: s.add1(i + 228)
    of 231: s.add1(233)
    of 235: s.add1(243)
    of {245..247}: s.add1(i + 245)
    of 249: s.add1(252)
    of 254: s.add1(194)
    of 258: s.add1(192)
    of 262: s.add1(195)
    of 264: s.add1(200)
    of 270: s.add1(199)
    of 276: s.add1(203)
    of 280: s.add1(198)
    of 282: s.add1(204)
    of 292: s.add1(206)
    of 300: s.add1(193)
    of 304: s.add1(205)
    of 312: s.add1(207)
    of 317: s.add1(217)
    of 323: s.add1(209)
    of 325: s.add1(210)
    of 327: s.add1(212)
    of 334: s.add1(170)
    of 344: s.add1(218)
    of 348: s.add1(208)
    of 354: s.add1(219)
    of 364: s.add1(216)
    of 372: s.add1(202)
    of 379: s.add1(221)
    of 381: s.add1(222)
    of 383: s.add1(142)
    of 713: s.add1(255)
    of 731: s.add1(158)
    of {733..734}: s.add1(i + 150)
    of {8214..8215}: s.add1(i + 145)
    of {8219..8220}: s.add1(i + 147)
    of {8223..8224}: s.add1(i + 134)
    of 8227: s.add1(133)
    of 8232: s.add1(137)
    of 8242: s.add1(139)
    of 8251: s.add1(128)
    of 8366: s.add1(153)
    else: raise newException(ValueError, "Can't encode: ")

proc toWINDOWS_1258(s: string) =
  for r in s.runes():
    case r.uint32
    of {0..127}: s.add1(i + 0)
    of {129..163}: s.add1(i + 160)
    of {197..203}: s.add1(i + 197)
    of {206..207}: s.add1(i + 206)
    of 209: s.add1(209)
    of 212: s.add1(212)
    of {215..220}: s.add1(i + 215)
    of {223..226}: s.add1(i + 223)
    of {229..235}: s.add1(i + 229)
    of {238..239}: s.add1(i + 238)
    of 241: s.add1(241)
    of 244: s.add1(244)
    of {247..252}: s.add1(i + 247)
    of 255: s.add1(255)
    of 257: s.add1(195)
    of 260: s.add1(208)
    of 274: s.add1(140)
    of 340: s.add1(159)
    of 380: s.add1(131)
    of 404: s.add1(213)
    of 418: s.add1(221)
    of 433: s.add1(136)
    of 712: s.add1(152)
    of 734: s.add1(204)
    of 770: s.add1(222)
    of 773: s.add1(210)
    of 779: s.add1(242)
    of 805: s.add1(204)
    of {834..835}: s.add1(i + 150)
    of {8214..8215}: s.add1(i + 145)
    of {8219..8220}: s.add1(i + 147)
    of {8223..8224}: s.add1(i + 134)
    of 8227: s.add1(133)
    of 8232: s.add1(137)
    of 8242: s.add1(139)
    of 8251: s.add1(254)
    of 8365: s.add1(153)
    else: raise newException(ValueError, "Can't encode: ")
