// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bio_hive_4.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BioHive4Adapter extends TypeAdapter<BioHive4> {
  @override
  final int typeId = 3;

  @override
  BioHive4 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BioHive4(
      localId: fields[0] as int?,
      d4: fields[1] as String?,
      d40: fields[2] as String?,
      d400: fields[3] as String?,
      d41: fields[4] as String?,
      d42: fields[5] as String?,
      d43: fields[6] as String?,
      d44: fields[7] as String?,
      d45: fields[8] as String?,
      d46: fields[9] as String?,
      d47: fields[10] as String?,
      d48: fields[11] as String?,
      d49: fields[12] as String?,
      d5: fields[13] as String?,
      d50: fields[14] as String?,
      d51: fields[15] as String?,
      d52: fields[16] as String?,
      d53: fields[17] as String?,
      d54: fields[18] as String?,
      d55: fields[19] as String?,
      d56: fields[20] as String?,
      d57: fields[21] as String?,
      d58: fields[22] as String?,
      d59: fields[23] as String?,
      d6: fields[24] as String?,
      d60: fields[25] as String?,
      d61: fields[26] as String?,
      d62: fields[27] as String?,
      d63: fields[28] as String?,
      d64: fields[29] as String?,
      d65: fields[30] as String?,
      d66: fields[41] as String?,
      d67: fields[42] as String?,
      d68: fields[43] as String?,
      d69: fields[44] as String?,
      d7: fields[45] as String?,
      d70: fields[46] as String?,
      d71: fields[47] as String?,
      d72: fields[48] as String?,
      d73: fields[49] as String?,
      d74: fields[50] as String?,
      d75: fields[51] as String?,
      d76: fields[52] as String?,
      d77: fields[53] as String?,
      d78: fields[54] as String?,
      d79: fields[55] as String?,
      d8: fields[56] as String?,
      d80: fields[57] as String?,
      d81: fields[58] as String?,
      d82: fields[59] as String?,
      d83: fields[60] as String?,
      d84: fields[61] as String?,
      d85: fields[62] as String?,
      d86: fields[63] as String?,
      d87: fields[64] as String?,
      d88: fields[65] as String?,
      d89: fields[66] as String?,
      d9: fields[67] as String?,
      d90: fields[68] as String?,
      d91: fields[69] as String?,
      d92: fields[71] as String?,
      d93: fields[72] as String?,
      d94: fields[73] as String?,
      d95: fields[74] as String?,
      d96: fields[75] as String?,
      d97: fields[76] as String?,
      d98: fields[77] as String?,
      d99: fields[78] as String?,
      docno: fields[79] as String?,
      file10editable: fields[80] as String?,
      file1editable: fields[81] as String?,
      file2editable: fields[82] as String?,
      file3editable: fields[83] as String?,
      file4editable: fields[84] as String?,
      file5editable: fields[85] as String?,
      file6editable: fields[86] as String?,
      file7editable: fields[87] as String?,
      file8editable: fields[88] as String?,
      file9editable: fields[89] as String?,
      gbn: fields[90] as String?,
      idx: fields[91] as int?,
      printSubmitDt: fields[92] as String?,
      regId: fields[93] as String?,
      reg_datetime: fields[94] as int?,
      simAuth: fields[95] as int?,
      status: fields[96] as String?,
      tableName: fields[97] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, BioHive4 obj) {
    writer
      ..writeByte(87)
      ..writeByte(0)
      ..write(obj.localId)
      ..writeByte(1)
      ..write(obj.d4)
      ..writeByte(2)
      ..write(obj.d40)
      ..writeByte(3)
      ..write(obj.d400)
      ..writeByte(4)
      ..write(obj.d41)
      ..writeByte(5)
      ..write(obj.d42)
      ..writeByte(6)
      ..write(obj.d43)
      ..writeByte(7)
      ..write(obj.d44)
      ..writeByte(8)
      ..write(obj.d45)
      ..writeByte(9)
      ..write(obj.d46)
      ..writeByte(10)
      ..write(obj.d47)
      ..writeByte(11)
      ..write(obj.d48)
      ..writeByte(12)
      ..write(obj.d49)
      ..writeByte(13)
      ..write(obj.d5)
      ..writeByte(14)
      ..write(obj.d50)
      ..writeByte(15)
      ..write(obj.d51)
      ..writeByte(16)
      ..write(obj.d52)
      ..writeByte(17)
      ..write(obj.d53)
      ..writeByte(18)
      ..write(obj.d54)
      ..writeByte(19)
      ..write(obj.d55)
      ..writeByte(20)
      ..write(obj.d56)
      ..writeByte(21)
      ..write(obj.d57)
      ..writeByte(22)
      ..write(obj.d58)
      ..writeByte(23)
      ..write(obj.d59)
      ..writeByte(24)
      ..write(obj.d6)
      ..writeByte(25)
      ..write(obj.d60)
      ..writeByte(26)
      ..write(obj.d61)
      ..writeByte(27)
      ..write(obj.d62)
      ..writeByte(28)
      ..write(obj.d63)
      ..writeByte(29)
      ..write(obj.d64)
      ..writeByte(30)
      ..write(obj.d65)
      ..writeByte(41)
      ..write(obj.d66)
      ..writeByte(42)
      ..write(obj.d67)
      ..writeByte(43)
      ..write(obj.d68)
      ..writeByte(44)
      ..write(obj.d69)
      ..writeByte(45)
      ..write(obj.d7)
      ..writeByte(46)
      ..write(obj.d70)
      ..writeByte(47)
      ..write(obj.d71)
      ..writeByte(48)
      ..write(obj.d72)
      ..writeByte(49)
      ..write(obj.d73)
      ..writeByte(50)
      ..write(obj.d74)
      ..writeByte(51)
      ..write(obj.d75)
      ..writeByte(52)
      ..write(obj.d76)
      ..writeByte(53)
      ..write(obj.d77)
      ..writeByte(54)
      ..write(obj.d78)
      ..writeByte(55)
      ..write(obj.d79)
      ..writeByte(56)
      ..write(obj.d8)
      ..writeByte(57)
      ..write(obj.d80)
      ..writeByte(58)
      ..write(obj.d81)
      ..writeByte(59)
      ..write(obj.d82)
      ..writeByte(60)
      ..write(obj.d83)
      ..writeByte(61)
      ..write(obj.d84)
      ..writeByte(62)
      ..write(obj.d85)
      ..writeByte(63)
      ..write(obj.d86)
      ..writeByte(64)
      ..write(obj.d87)
      ..writeByte(65)
      ..write(obj.d88)
      ..writeByte(66)
      ..write(obj.d89)
      ..writeByte(67)
      ..write(obj.d9)
      ..writeByte(68)
      ..write(obj.d90)
      ..writeByte(69)
      ..write(obj.d91)
      ..writeByte(71)
      ..write(obj.d92)
      ..writeByte(72)
      ..write(obj.d93)
      ..writeByte(73)
      ..write(obj.d94)
      ..writeByte(74)
      ..write(obj.d95)
      ..writeByte(75)
      ..write(obj.d96)
      ..writeByte(76)
      ..write(obj.d97)
      ..writeByte(77)
      ..write(obj.d98)
      ..writeByte(78)
      ..write(obj.d99)
      ..writeByte(79)
      ..write(obj.docno)
      ..writeByte(80)
      ..write(obj.file10editable)
      ..writeByte(81)
      ..write(obj.file1editable)
      ..writeByte(82)
      ..write(obj.file2editable)
      ..writeByte(83)
      ..write(obj.file3editable)
      ..writeByte(84)
      ..write(obj.file4editable)
      ..writeByte(85)
      ..write(obj.file5editable)
      ..writeByte(86)
      ..write(obj.file6editable)
      ..writeByte(87)
      ..write(obj.file7editable)
      ..writeByte(88)
      ..write(obj.file8editable)
      ..writeByte(89)
      ..write(obj.file9editable)
      ..writeByte(90)
      ..write(obj.gbn)
      ..writeByte(91)
      ..write(obj.idx)
      ..writeByte(92)
      ..write(obj.printSubmitDt)
      ..writeByte(93)
      ..write(obj.regId)
      ..writeByte(94)
      ..write(obj.reg_datetime)
      ..writeByte(95)
      ..write(obj.simAuth)
      ..writeByte(96)
      ..write(obj.status)
      ..writeByte(97)
      ..write(obj.tableName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BioHive4Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
