// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bio_hive_3.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BioHive3Adapter extends TypeAdapter<BioHive3> {
  @override
  final int typeId = 2;

  @override
  BioHive3 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BioHive3(
      localId: fields[0] as int?,
      d2: fields[1] as String?,
      d20: fields[2] as String?,
      d200: fields[3] as String?,
      d201: fields[4] as String?,
      d202: fields[5] as String?,
      d203: fields[6] as String?,
      d204: fields[7] as String?,
      d205: fields[8] as String?,
      d206: fields[9] as String?,
      d207: fields[10] as String?,
      d208: fields[12] as String?,
      d209: fields[13] as String?,
      d21: fields[14] as String?,
      d210: fields[15] as String?,
      d211: fields[16] as String?,
      d212: fields[17] as String?,
      d213: fields[18] as String?,
      d214: fields[19] as String?,
      d215: fields[20] as String?,
      d216: fields[21] as String?,
      d217: fields[22] as String?,
      d218: fields[23] as String?,
      d219: fields[24] as String?,
      d22: fields[25] as String?,
      d220: fields[26] as String?,
      d221: fields[27] as String?,
      d222: fields[28] as String?,
      d223: fields[29] as String?,
      d224: fields[30] as String?,
      d225: fields[31] as String?,
      d226: fields[32] as String?,
      d227: fields[33] as String?,
      d228: fields[34] as String?,
      d229: fields[35] as String?,
      d23: fields[36] as String?,
      d230: fields[37] as String?,
      d231: fields[38] as String?,
      d232: fields[39] as String?,
      d233: fields[40] as String?,
      d234: fields[41] as String?,
      d235: fields[42] as String?,
      d236: fields[43] as String?,
      d237: fields[44] as String?,
      d238: fields[45] as String?,
      d239: fields[46] as String?,
      d24: fields[47] as String?,
      d240: fields[48] as String?,
      d241: fields[49] as String?,
      d242: fields[50] as String?,
      d243: fields[51] as String?,
      d244: fields[52] as String?,
      d245: fields[53] as String?,
      d246: fields[54] as String?,
      d247: fields[55] as String?,
      d248: fields[56] as String?,
      d249: fields[57] as String?,
      d25: fields[58] as String?,
      d250: fields[59] as String?,
      d251: fields[60] as String?,
      d252: fields[61] as String?,
      d253: fields[62] as String?,
      d254: fields[63] as String?,
      d255: fields[64] as String?,
      d256: fields[65] as String?,
      d257: fields[66] as String?,
      d258: fields[67] as String?,
      d259: fields[68] as String?,
      d26: fields[69] as String?,
      d260: fields[70] as String?,
      d261: fields[71] as String?,
      d262: fields[72] as String?,
      d263: fields[73] as String?,
      d264: fields[74] as String?,
      d265: fields[75] as String?,
      d266: fields[76] as String?,
      d267: fields[77] as String?,
      d268: fields[78] as String?,
      d269: fields[79] as String?,
      d27: fields[80] as String?,
      d270: fields[81] as String?,
      d271: fields[82] as String?,
      d272: fields[83] as String?,
      d273: fields[84] as String?,
      d274: fields[85] as String?,
      d275: fields[86] as String?,
      d276: fields[87] as String?,
      d277: fields[88] as String?,
      d278: fields[89] as String?,
      d279: fields[90] as String?,
      d28: fields[91] as String?,
      d280: fields[92] as String?,
      d281: fields[93] as String?,
      d282: fields[94] as String?,
      d283: fields[95] as String?,
      d284: fields[96] as String?,
      d285: fields[97] as String?,
      d286: fields[98] as String?,
      d287: fields[99] as String?,
      d288: fields[100] as String?,
      d289: fields[101] as String?,
      d29: fields[102] as String?,
      d290: fields[103] as String?,
      d291: fields[104] as String?,
      d292: fields[105] as String?,
      d293: fields[106] as String?,
      d294: fields[107] as String?,
      d295: fields[108] as String?,
      d296: fields[109] as String?,
      d297: fields[110] as String?,
      d298: fields[111] as String?,
      d299: fields[112] as String?,
      d3: fields[113] as String?,
      d30: fields[114] as String?,
      d300: fields[115] as String?,
      d301: fields[116] as String?,
      d302: fields[117] as String?,
      d303: fields[118] as String?,
      d304: fields[119] as String?,
      d305: fields[120] as String?,
      d306: fields[121] as String?,
      d307: fields[122] as String?,
      d308: fields[123] as String?,
      d309: fields[124] as String?,
      d31: fields[125] as String?,
      d310: fields[126] as String?,
      d311: fields[127] as String?,
      d312: fields[128] as String?,
      d313: fields[129] as String?,
      d314: fields[130] as String?,
      d315: fields[131] as String?,
      d316: fields[132] as String?,
      d317: fields[133] as String?,
      d318: fields[134] as String?,
      d319: fields[135] as String?,
      d32: fields[136] as String?,
      d320: fields[137] as String?,
      d321: fields[138] as String?,
      d322: fields[139] as String?,
      d323: fields[140] as String?,
      d324: fields[141] as String?,
      d325: fields[142] as String?,
      d326: fields[143] as String?,
      d327: fields[144] as String?,
      d328: fields[145] as String?,
      d329: fields[146] as String?,
      d33: fields[147] as String?,
      d330: fields[148] as String?,
      d331: fields[149] as String?,
      d332: fields[150] as String?,
      d333: fields[151] as String?,
      d334: fields[152] as String?,
      d335: fields[153] as String?,
      d336: fields[154] as String?,
      d337: fields[155] as String?,
      d338: fields[156] as String?,
      d339: fields[157] as String?,
      d34: fields[158] as String?,
      d340: fields[159] as String?,
      d341: fields[160] as String?,
      d342: fields[161] as String?,
      d343: fields[162] as String?,
      d344: fields[163] as String?,
      d345: fields[164] as String?,
      d346: fields[165] as String?,
      d347: fields[166] as String?,
      d348: fields[167] as String?,
      d349: fields[168] as String?,
      d35: fields[169] as String?,
      d350: fields[170] as String?,
      d351: fields[171] as String?,
      d352: fields[172] as String?,
      d353: fields[173] as String?,
      d354: fields[174] as String?,
      d355: fields[175] as String?,
      d356: fields[176] as String?,
      d357: fields[177] as String?,
      d358: fields[178] as String?,
      d359: fields[179] as String?,
      d36: fields[180] as String?,
      d360: fields[181] as String?,
      d361: fields[182] as String?,
      d362: fields[183] as String?,
      d363: fields[184] as String?,
      d364: fields[185] as String?,
      d365: fields[186] as String?,
      d366: fields[187] as String?,
      d367: fields[188] as String?,
      d368: fields[189] as String?,
      d369: fields[190] as String?,
      d37: fields[191] as String?,
      d370: fields[192] as String?,
      d371: fields[193] as String?,
      d372: fields[194] as String?,
      d373: fields[195] as String?,
      d374: fields[196] as String?,
      d375: fields[197] as String?,
      d376: fields[198] as String?,
      d377: fields[199] as String?,
      d378: fields[200] as String?,
      d379: fields[201] as String?,
      d38: fields[202] as String?,
      d380: fields[203] as String?,
      d381: fields[204] as String?,
      d382: fields[205] as String?,
      d383: fields[206] as String?,
      d384: fields[207] as String?,
      d385: fields[208] as String?,
      d386: fields[209] as String?,
      d387: fields[210] as String?,
      d388: fields[211] as String?,
      d389: fields[212] as String?,
      d39: fields[213] as String?,
      d390: fields[214] as String?,
      d391: fields[215] as String?,
      d392: fields[216] as String?,
      d393: fields[217] as String?,
      d394: fields[218] as String?,
      d395: fields[219] as String?,
      d396: fields[220] as String?,
      d397: fields[221] as String?,
      d398: fields[222] as String?,
      d399: fields[223] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, BioHive3 obj) {
    writer
      ..writeByte(223)
      ..writeByte(0)
      ..write(obj.localId)
      ..writeByte(1)
      ..write(obj.d2)
      ..writeByte(2)
      ..write(obj.d20)
      ..writeByte(3)
      ..write(obj.d200)
      ..writeByte(4)
      ..write(obj.d201)
      ..writeByte(5)
      ..write(obj.d202)
      ..writeByte(6)
      ..write(obj.d203)
      ..writeByte(7)
      ..write(obj.d204)
      ..writeByte(8)
      ..write(obj.d205)
      ..writeByte(9)
      ..write(obj.d206)
      ..writeByte(10)
      ..write(obj.d207)
      ..writeByte(12)
      ..write(obj.d208)
      ..writeByte(13)
      ..write(obj.d209)
      ..writeByte(14)
      ..write(obj.d21)
      ..writeByte(15)
      ..write(obj.d210)
      ..writeByte(16)
      ..write(obj.d211)
      ..writeByte(17)
      ..write(obj.d212)
      ..writeByte(18)
      ..write(obj.d213)
      ..writeByte(19)
      ..write(obj.d214)
      ..writeByte(20)
      ..write(obj.d215)
      ..writeByte(21)
      ..write(obj.d216)
      ..writeByte(22)
      ..write(obj.d217)
      ..writeByte(23)
      ..write(obj.d218)
      ..writeByte(24)
      ..write(obj.d219)
      ..writeByte(25)
      ..write(obj.d22)
      ..writeByte(26)
      ..write(obj.d220)
      ..writeByte(27)
      ..write(obj.d221)
      ..writeByte(28)
      ..write(obj.d222)
      ..writeByte(29)
      ..write(obj.d223)
      ..writeByte(30)
      ..write(obj.d224)
      ..writeByte(31)
      ..write(obj.d225)
      ..writeByte(32)
      ..write(obj.d226)
      ..writeByte(33)
      ..write(obj.d227)
      ..writeByte(34)
      ..write(obj.d228)
      ..writeByte(35)
      ..write(obj.d229)
      ..writeByte(36)
      ..write(obj.d23)
      ..writeByte(37)
      ..write(obj.d230)
      ..writeByte(38)
      ..write(obj.d231)
      ..writeByte(39)
      ..write(obj.d232)
      ..writeByte(40)
      ..write(obj.d233)
      ..writeByte(41)
      ..write(obj.d234)
      ..writeByte(42)
      ..write(obj.d235)
      ..writeByte(43)
      ..write(obj.d236)
      ..writeByte(44)
      ..write(obj.d237)
      ..writeByte(45)
      ..write(obj.d238)
      ..writeByte(46)
      ..write(obj.d239)
      ..writeByte(47)
      ..write(obj.d24)
      ..writeByte(48)
      ..write(obj.d240)
      ..writeByte(49)
      ..write(obj.d241)
      ..writeByte(50)
      ..write(obj.d242)
      ..writeByte(51)
      ..write(obj.d243)
      ..writeByte(52)
      ..write(obj.d244)
      ..writeByte(53)
      ..write(obj.d245)
      ..writeByte(54)
      ..write(obj.d246)
      ..writeByte(55)
      ..write(obj.d247)
      ..writeByte(56)
      ..write(obj.d248)
      ..writeByte(57)
      ..write(obj.d249)
      ..writeByte(58)
      ..write(obj.d25)
      ..writeByte(59)
      ..write(obj.d250)
      ..writeByte(60)
      ..write(obj.d251)
      ..writeByte(61)
      ..write(obj.d252)
      ..writeByte(62)
      ..write(obj.d253)
      ..writeByte(63)
      ..write(obj.d254)
      ..writeByte(64)
      ..write(obj.d255)
      ..writeByte(65)
      ..write(obj.d256)
      ..writeByte(66)
      ..write(obj.d257)
      ..writeByte(67)
      ..write(obj.d258)
      ..writeByte(68)
      ..write(obj.d259)
      ..writeByte(69)
      ..write(obj.d26)
      ..writeByte(70)
      ..write(obj.d260)
      ..writeByte(71)
      ..write(obj.d261)
      ..writeByte(72)
      ..write(obj.d262)
      ..writeByte(73)
      ..write(obj.d263)
      ..writeByte(74)
      ..write(obj.d264)
      ..writeByte(75)
      ..write(obj.d265)
      ..writeByte(76)
      ..write(obj.d266)
      ..writeByte(77)
      ..write(obj.d267)
      ..writeByte(78)
      ..write(obj.d268)
      ..writeByte(79)
      ..write(obj.d269)
      ..writeByte(80)
      ..write(obj.d27)
      ..writeByte(81)
      ..write(obj.d270)
      ..writeByte(82)
      ..write(obj.d271)
      ..writeByte(83)
      ..write(obj.d272)
      ..writeByte(84)
      ..write(obj.d273)
      ..writeByte(85)
      ..write(obj.d274)
      ..writeByte(86)
      ..write(obj.d275)
      ..writeByte(87)
      ..write(obj.d276)
      ..writeByte(88)
      ..write(obj.d277)
      ..writeByte(89)
      ..write(obj.d278)
      ..writeByte(90)
      ..write(obj.d279)
      ..writeByte(91)
      ..write(obj.d28)
      ..writeByte(92)
      ..write(obj.d280)
      ..writeByte(93)
      ..write(obj.d281)
      ..writeByte(94)
      ..write(obj.d282)
      ..writeByte(95)
      ..write(obj.d283)
      ..writeByte(96)
      ..write(obj.d284)
      ..writeByte(97)
      ..write(obj.d285)
      ..writeByte(98)
      ..write(obj.d286)
      ..writeByte(99)
      ..write(obj.d287)
      ..writeByte(100)
      ..write(obj.d288)
      ..writeByte(101)
      ..write(obj.d289)
      ..writeByte(102)
      ..write(obj.d29)
      ..writeByte(103)
      ..write(obj.d290)
      ..writeByte(104)
      ..write(obj.d291)
      ..writeByte(105)
      ..write(obj.d292)
      ..writeByte(106)
      ..write(obj.d293)
      ..writeByte(107)
      ..write(obj.d294)
      ..writeByte(108)
      ..write(obj.d295)
      ..writeByte(109)
      ..write(obj.d296)
      ..writeByte(110)
      ..write(obj.d297)
      ..writeByte(111)
      ..write(obj.d298)
      ..writeByte(112)
      ..write(obj.d299)
      ..writeByte(113)
      ..write(obj.d3)
      ..writeByte(114)
      ..write(obj.d30)
      ..writeByte(115)
      ..write(obj.d300)
      ..writeByte(116)
      ..write(obj.d301)
      ..writeByte(117)
      ..write(obj.d302)
      ..writeByte(118)
      ..write(obj.d303)
      ..writeByte(119)
      ..write(obj.d304)
      ..writeByte(120)
      ..write(obj.d305)
      ..writeByte(121)
      ..write(obj.d306)
      ..writeByte(122)
      ..write(obj.d307)
      ..writeByte(123)
      ..write(obj.d308)
      ..writeByte(124)
      ..write(obj.d309)
      ..writeByte(125)
      ..write(obj.d31)
      ..writeByte(126)
      ..write(obj.d310)
      ..writeByte(127)
      ..write(obj.d311)
      ..writeByte(128)
      ..write(obj.d312)
      ..writeByte(129)
      ..write(obj.d313)
      ..writeByte(130)
      ..write(obj.d314)
      ..writeByte(131)
      ..write(obj.d315)
      ..writeByte(132)
      ..write(obj.d316)
      ..writeByte(133)
      ..write(obj.d317)
      ..writeByte(134)
      ..write(obj.d318)
      ..writeByte(135)
      ..write(obj.d319)
      ..writeByte(136)
      ..write(obj.d32)
      ..writeByte(137)
      ..write(obj.d320)
      ..writeByte(138)
      ..write(obj.d321)
      ..writeByte(139)
      ..write(obj.d322)
      ..writeByte(140)
      ..write(obj.d323)
      ..writeByte(141)
      ..write(obj.d324)
      ..writeByte(142)
      ..write(obj.d325)
      ..writeByte(143)
      ..write(obj.d326)
      ..writeByte(144)
      ..write(obj.d327)
      ..writeByte(145)
      ..write(obj.d328)
      ..writeByte(146)
      ..write(obj.d329)
      ..writeByte(147)
      ..write(obj.d33)
      ..writeByte(148)
      ..write(obj.d330)
      ..writeByte(149)
      ..write(obj.d331)
      ..writeByte(150)
      ..write(obj.d332)
      ..writeByte(151)
      ..write(obj.d333)
      ..writeByte(152)
      ..write(obj.d334)
      ..writeByte(153)
      ..write(obj.d335)
      ..writeByte(154)
      ..write(obj.d336)
      ..writeByte(155)
      ..write(obj.d337)
      ..writeByte(156)
      ..write(obj.d338)
      ..writeByte(157)
      ..write(obj.d339)
      ..writeByte(158)
      ..write(obj.d34)
      ..writeByte(159)
      ..write(obj.d340)
      ..writeByte(160)
      ..write(obj.d341)
      ..writeByte(161)
      ..write(obj.d342)
      ..writeByte(162)
      ..write(obj.d343)
      ..writeByte(163)
      ..write(obj.d344)
      ..writeByte(164)
      ..write(obj.d345)
      ..writeByte(165)
      ..write(obj.d346)
      ..writeByte(166)
      ..write(obj.d347)
      ..writeByte(167)
      ..write(obj.d348)
      ..writeByte(168)
      ..write(obj.d349)
      ..writeByte(169)
      ..write(obj.d35)
      ..writeByte(170)
      ..write(obj.d350)
      ..writeByte(171)
      ..write(obj.d351)
      ..writeByte(172)
      ..write(obj.d352)
      ..writeByte(173)
      ..write(obj.d353)
      ..writeByte(174)
      ..write(obj.d354)
      ..writeByte(175)
      ..write(obj.d355)
      ..writeByte(176)
      ..write(obj.d356)
      ..writeByte(177)
      ..write(obj.d357)
      ..writeByte(178)
      ..write(obj.d358)
      ..writeByte(179)
      ..write(obj.d359)
      ..writeByte(180)
      ..write(obj.d36)
      ..writeByte(181)
      ..write(obj.d360)
      ..writeByte(182)
      ..write(obj.d361)
      ..writeByte(183)
      ..write(obj.d362)
      ..writeByte(184)
      ..write(obj.d363)
      ..writeByte(185)
      ..write(obj.d364)
      ..writeByte(186)
      ..write(obj.d365)
      ..writeByte(187)
      ..write(obj.d366)
      ..writeByte(188)
      ..write(obj.d367)
      ..writeByte(189)
      ..write(obj.d368)
      ..writeByte(190)
      ..write(obj.d369)
      ..writeByte(191)
      ..write(obj.d37)
      ..writeByte(192)
      ..write(obj.d370)
      ..writeByte(193)
      ..write(obj.d371)
      ..writeByte(194)
      ..write(obj.d372)
      ..writeByte(195)
      ..write(obj.d373)
      ..writeByte(196)
      ..write(obj.d374)
      ..writeByte(197)
      ..write(obj.d375)
      ..writeByte(198)
      ..write(obj.d376)
      ..writeByte(199)
      ..write(obj.d377)
      ..writeByte(200)
      ..write(obj.d378)
      ..writeByte(201)
      ..write(obj.d379)
      ..writeByte(202)
      ..write(obj.d38)
      ..writeByte(203)
      ..write(obj.d380)
      ..writeByte(204)
      ..write(obj.d381)
      ..writeByte(205)
      ..write(obj.d382)
      ..writeByte(206)
      ..write(obj.d383)
      ..writeByte(207)
      ..write(obj.d384)
      ..writeByte(208)
      ..write(obj.d385)
      ..writeByte(209)
      ..write(obj.d386)
      ..writeByte(210)
      ..write(obj.d387)
      ..writeByte(211)
      ..write(obj.d388)
      ..writeByte(212)
      ..write(obj.d389)
      ..writeByte(213)
      ..write(obj.d39)
      ..writeByte(214)
      ..write(obj.d390)
      ..writeByte(215)
      ..write(obj.d391)
      ..writeByte(216)
      ..write(obj.d392)
      ..writeByte(217)
      ..write(obj.d393)
      ..writeByte(218)
      ..write(obj.d394)
      ..writeByte(219)
      ..write(obj.d395)
      ..writeByte(220)
      ..write(obj.d396)
      ..writeByte(221)
      ..write(obj.d397)
      ..writeByte(222)
      ..write(obj.d398)
      ..writeByte(223)
      ..write(obj.d399);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BioHive3Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
