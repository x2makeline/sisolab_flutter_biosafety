// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bio_hive_2.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BioHive2Adapter extends TypeAdapter<BioHive2> {
  @override
  final int typeId = 1;

  @override
  BioHive2 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BioHive2(
      localId: fields[0] as int?,
      comAddress: fields[3] as String?,
      comCode: fields[4] as String?,
      comName: fields[5] as String?,
      company: fields[6] as String?,
      d1: fields[7] as String?,
      d10: fields[8] as String?,
      d100: fields[9] as String?,
      d101: fields[10] as String?,
      d102: fields[11] as String?,
      d103: fields[12] as String?,
      d104: fields[13] as String?,
      d105: fields[14] as String?,
      d106: fields[15] as String?,
      d107: fields[16] as String?,
      d108: fields[17] as String?,
      d109: fields[18] as String?,
      d11: fields[19] as String?,
      d110: fields[20] as String?,
      d111: fields[21] as String?,
      d112: fields[22] as String?,
      d113: fields[23] as String?,
      d114: fields[24] as String?,
      d115: fields[25] as String?,
      d116: fields[26] as String?,
      d117: fields[27] as String?,
      d118: fields[28] as String?,
      d119: fields[29] as String?,
      d12: fields[30] as String?,
      d120: fields[31] as String?,
      d121: fields[32] as String?,
      d122: fields[33] as String?,
      d123: fields[34] as String?,
      d124: fields[35] as String?,
      d125: fields[36] as String?,
      d126: fields[37] as String?,
      d127: fields[38] as String?,
      d128: fields[39] as String?,
      d129: fields[40] as String?,
      d13: fields[41] as String?,
      d130: fields[42] as String?,
      d131: fields[43] as String?,
      d132: fields[44] as String?,
      d133: fields[45] as String?,
      d134: fields[46] as String?,
      d135: fields[47] as String?,
      d136: fields[48] as String?,
      d137: fields[49] as String?,
      d138: fields[50] as String?,
      d139: fields[51] as String?,
      d14: fields[52] as String?,
      d140: fields[53] as String?,
      d141: fields[54] as String?,
      d142: fields[55] as String?,
      d143: fields[56] as String?,
      d144: fields[57] as String?,
      d145: fields[58] as String?,
      d146: fields[59] as String?,
      d147: fields[60] as String?,
      d148: fields[61] as String?,
      d149: fields[62] as String?,
      d15: fields[63] as String?,
      d150: fields[64] as String?,
      d151: fields[65] as String?,
      d152: fields[66] as String?,
      d153: fields[67] as String?,
      d154: fields[68] as String?,
      d155: fields[69] as String?,
      d156: fields[70] as String?,
      d157: fields[71] as String?,
      d158: fields[72] as String?,
      d159: fields[73] as String?,
      d16: fields[74] as String?,
      d160: fields[75] as String?,
      d161: fields[76] as String?,
      d162: fields[77] as String?,
      d163: fields[78] as String?,
      d164: fields[79] as String?,
      d165: fields[80] as String?,
      d166: fields[81] as String?,
      d167: fields[82] as String?,
      d168: fields[83] as String?,
      d169: fields[84] as String?,
      d17: fields[85] as String?,
      d170: fields[86] as String?,
      d171: fields[87] as String?,
      d172: fields[88] as String?,
      d173: fields[89] as String?,
      d174: fields[90] as String?,
      d175: fields[91] as String?,
      d176: fields[92] as String?,
      d177: fields[93] as String?,
      d178: fields[94] as String?,
      d179: fields[95] as String?,
      d18: fields[96] as String?,
      d180: fields[97] as String?,
      d181: fields[98] as String?,
      d182: fields[99] as String?,
      d183: fields[100] as String?,
      d184: fields[101] as String?,
      d185: fields[102] as String?,
      d186: fields[103] as String?,
      d187: fields[104] as String?,
      d188: fields[105] as String?,
      d189: fields[106] as String?,
      d19: fields[107] as String?,
      d190: fields[108] as String?,
      d191: fields[109] as String?,
      d192: fields[110] as String?,
      d193: fields[111] as String?,
      d194: fields[112] as String?,
      d195: fields[113] as String?,
      d196: fields[114] as String?,
      d197: fields[115] as String?,
      d198: fields[116] as String?,
      d199: fields[117] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, BioHive2 obj) {
    writer
      ..writeByte(116)
      ..writeByte(0)
      ..write(obj.localId)
      ..writeByte(3)
      ..write(obj.comAddress)
      ..writeByte(4)
      ..write(obj.comCode)
      ..writeByte(5)
      ..write(obj.comName)
      ..writeByte(6)
      ..write(obj.company)
      ..writeByte(7)
      ..write(obj.d1)
      ..writeByte(8)
      ..write(obj.d10)
      ..writeByte(9)
      ..write(obj.d100)
      ..writeByte(10)
      ..write(obj.d101)
      ..writeByte(11)
      ..write(obj.d102)
      ..writeByte(12)
      ..write(obj.d103)
      ..writeByte(13)
      ..write(obj.d104)
      ..writeByte(14)
      ..write(obj.d105)
      ..writeByte(15)
      ..write(obj.d106)
      ..writeByte(16)
      ..write(obj.d107)
      ..writeByte(17)
      ..write(obj.d108)
      ..writeByte(18)
      ..write(obj.d109)
      ..writeByte(19)
      ..write(obj.d11)
      ..writeByte(20)
      ..write(obj.d110)
      ..writeByte(21)
      ..write(obj.d111)
      ..writeByte(22)
      ..write(obj.d112)
      ..writeByte(23)
      ..write(obj.d113)
      ..writeByte(24)
      ..write(obj.d114)
      ..writeByte(25)
      ..write(obj.d115)
      ..writeByte(26)
      ..write(obj.d116)
      ..writeByte(27)
      ..write(obj.d117)
      ..writeByte(28)
      ..write(obj.d118)
      ..writeByte(29)
      ..write(obj.d119)
      ..writeByte(30)
      ..write(obj.d12)
      ..writeByte(31)
      ..write(obj.d120)
      ..writeByte(32)
      ..write(obj.d121)
      ..writeByte(33)
      ..write(obj.d122)
      ..writeByte(34)
      ..write(obj.d123)
      ..writeByte(35)
      ..write(obj.d124)
      ..writeByte(36)
      ..write(obj.d125)
      ..writeByte(37)
      ..write(obj.d126)
      ..writeByte(38)
      ..write(obj.d127)
      ..writeByte(39)
      ..write(obj.d128)
      ..writeByte(40)
      ..write(obj.d129)
      ..writeByte(41)
      ..write(obj.d13)
      ..writeByte(42)
      ..write(obj.d130)
      ..writeByte(43)
      ..write(obj.d131)
      ..writeByte(44)
      ..write(obj.d132)
      ..writeByte(45)
      ..write(obj.d133)
      ..writeByte(46)
      ..write(obj.d134)
      ..writeByte(47)
      ..write(obj.d135)
      ..writeByte(48)
      ..write(obj.d136)
      ..writeByte(49)
      ..write(obj.d137)
      ..writeByte(50)
      ..write(obj.d138)
      ..writeByte(51)
      ..write(obj.d139)
      ..writeByte(52)
      ..write(obj.d14)
      ..writeByte(53)
      ..write(obj.d140)
      ..writeByte(54)
      ..write(obj.d141)
      ..writeByte(55)
      ..write(obj.d142)
      ..writeByte(56)
      ..write(obj.d143)
      ..writeByte(57)
      ..write(obj.d144)
      ..writeByte(58)
      ..write(obj.d145)
      ..writeByte(59)
      ..write(obj.d146)
      ..writeByte(60)
      ..write(obj.d147)
      ..writeByte(61)
      ..write(obj.d148)
      ..writeByte(62)
      ..write(obj.d149)
      ..writeByte(63)
      ..write(obj.d15)
      ..writeByte(64)
      ..write(obj.d150)
      ..writeByte(65)
      ..write(obj.d151)
      ..writeByte(66)
      ..write(obj.d152)
      ..writeByte(67)
      ..write(obj.d153)
      ..writeByte(68)
      ..write(obj.d154)
      ..writeByte(69)
      ..write(obj.d155)
      ..writeByte(70)
      ..write(obj.d156)
      ..writeByte(71)
      ..write(obj.d157)
      ..writeByte(72)
      ..write(obj.d158)
      ..writeByte(73)
      ..write(obj.d159)
      ..writeByte(74)
      ..write(obj.d16)
      ..writeByte(75)
      ..write(obj.d160)
      ..writeByte(76)
      ..write(obj.d161)
      ..writeByte(77)
      ..write(obj.d162)
      ..writeByte(78)
      ..write(obj.d163)
      ..writeByte(79)
      ..write(obj.d164)
      ..writeByte(80)
      ..write(obj.d165)
      ..writeByte(81)
      ..write(obj.d166)
      ..writeByte(82)
      ..write(obj.d167)
      ..writeByte(83)
      ..write(obj.d168)
      ..writeByte(84)
      ..write(obj.d169)
      ..writeByte(85)
      ..write(obj.d17)
      ..writeByte(86)
      ..write(obj.d170)
      ..writeByte(87)
      ..write(obj.d171)
      ..writeByte(88)
      ..write(obj.d172)
      ..writeByte(89)
      ..write(obj.d173)
      ..writeByte(90)
      ..write(obj.d174)
      ..writeByte(91)
      ..write(obj.d175)
      ..writeByte(92)
      ..write(obj.d176)
      ..writeByte(93)
      ..write(obj.d177)
      ..writeByte(94)
      ..write(obj.d178)
      ..writeByte(95)
      ..write(obj.d179)
      ..writeByte(96)
      ..write(obj.d18)
      ..writeByte(97)
      ..write(obj.d180)
      ..writeByte(98)
      ..write(obj.d181)
      ..writeByte(99)
      ..write(obj.d182)
      ..writeByte(100)
      ..write(obj.d183)
      ..writeByte(101)
      ..write(obj.d184)
      ..writeByte(102)
      ..write(obj.d185)
      ..writeByte(103)
      ..write(obj.d186)
      ..writeByte(104)
      ..write(obj.d187)
      ..writeByte(105)
      ..write(obj.d188)
      ..writeByte(106)
      ..write(obj.d189)
      ..writeByte(107)
      ..write(obj.d19)
      ..writeByte(108)
      ..write(obj.d190)
      ..writeByte(109)
      ..write(obj.d191)
      ..writeByte(110)
      ..write(obj.d192)
      ..writeByte(111)
      ..write(obj.d193)
      ..writeByte(112)
      ..write(obj.d194)
      ..writeByte(113)
      ..write(obj.d195)
      ..writeByte(114)
      ..write(obj.d196)
      ..writeByte(115)
      ..write(obj.d197)
      ..writeByte(116)
      ..write(obj.d198)
      ..writeByte(117)
      ..write(obj.d199);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BioHive2Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
