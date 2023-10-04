// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bio_hive_1.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BioHive1Adapter extends TypeAdapter<BioHive1> {
  @override
  final int typeId = 0;

  @override
  BioHive1 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BioHive1(
      localId: fields[0] as int?,
      localRegDateTime: fields[1] as String?,
      localUpdDateTime: fields[2] as String?,
      attNameTxt1: fields[3] as String?,
      attNameTxt10: fields[4] as String?,
      attNameTxt11: fields[5] as String?,
      attNameTxt12: fields[6] as String?,
      attNameTxt13: fields[7] as String?,
      attNameTxt14: fields[8] as String?,
      attNameTxt15: fields[9] as String?,
      attNameTxt16: fields[10] as String?,
      attNameTxt17: fields[11] as String?,
      attNameTxt18: fields[12] as String?,
      attNameTxt19: fields[13] as String?,
      attNameTxt2: fields[14] as String?,
      attNameTxt20: fields[15] as String?,
      attNameTxt3: fields[16] as String?,
      attNameTxt4: fields[17] as String?,
      attNameTxt5: fields[18] as String?,
      attNameTxt6: fields[19] as String?,
      attNameTxt7: fields[20] as String?,
      attNameTxt8: fields[21] as String?,
      attNameTxt9: fields[22] as String?,
      file10: fields[23] as String?,
      file11: fields[24] as String?,
      file12: fields[25] as String?,
      file13: fields[26] as String?,
      file14: fields[27] as String?,
      file15: fields[28] as String?,
      file16: fields[29] as String?,
      file17: fields[30] as String?,
      file18: fields[31] as String?,
      file19: fields[32] as String?,
      file1: fields[33] as String?,
      file20: fields[34] as String?,
      file21: fields[35] as String?,
      file22: fields[36] as String?,
      file23: fields[37] as String?,
      file24: fields[38] as String?,
      file25: fields[39] as String?,
      file26: fields[40] as String?,
      file27: fields[41] as String?,
      file28: fields[42] as String?,
      file29: fields[43] as String?,
      file2: fields[44] as String?,
      file30: fields[45] as String?,
      file31: fields[46] as String?,
      file32: fields[47] as String?,
      file33: fields[48] as String?,
      file34: fields[49] as String?,
      file35: fields[50] as String?,
      file36: fields[51] as String?,
      file37: fields[52] as String?,
      file38: fields[53] as String?,
      file39: fields[54] as String?,
      file3: fields[55] as String?,
      file40: fields[56] as String?,
      file41: fields[57] as String?,
      file42: fields[58] as String?,
      file43: fields[59] as String?,
      file44: fields[60] as String?,
      file45: fields[61] as String?,
      file46: fields[62] as String?,
      file47: fields[63] as String?,
      file48: fields[64] as String?,
      file49: fields[65] as String?,
      file4: fields[66] as String?,
      file5: fields[67] as String?,
      file6: fields[68] as String?,
      file7: fields[69] as String?,
      file8: fields[70] as String?,
      file9: fields[71] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, BioHive1 obj) {
    writer
      ..writeByte(72)
      ..writeByte(0)
      ..write(obj.localId)
      ..writeByte(1)
      ..write(obj.localRegDateTime)
      ..writeByte(2)
      ..write(obj.localUpdDateTime)
      ..writeByte(3)
      ..write(obj.attNameTxt1)
      ..writeByte(4)
      ..write(obj.attNameTxt10)
      ..writeByte(5)
      ..write(obj.attNameTxt11)
      ..writeByte(6)
      ..write(obj.attNameTxt12)
      ..writeByte(7)
      ..write(obj.attNameTxt13)
      ..writeByte(8)
      ..write(obj.attNameTxt14)
      ..writeByte(9)
      ..write(obj.attNameTxt15)
      ..writeByte(10)
      ..write(obj.attNameTxt16)
      ..writeByte(11)
      ..write(obj.attNameTxt17)
      ..writeByte(12)
      ..write(obj.attNameTxt18)
      ..writeByte(13)
      ..write(obj.attNameTxt19)
      ..writeByte(14)
      ..write(obj.attNameTxt2)
      ..writeByte(15)
      ..write(obj.attNameTxt20)
      ..writeByte(16)
      ..write(obj.attNameTxt3)
      ..writeByte(17)
      ..write(obj.attNameTxt4)
      ..writeByte(18)
      ..write(obj.attNameTxt5)
      ..writeByte(19)
      ..write(obj.attNameTxt6)
      ..writeByte(20)
      ..write(obj.attNameTxt7)
      ..writeByte(21)
      ..write(obj.attNameTxt8)
      ..writeByte(22)
      ..write(obj.attNameTxt9)
      ..writeByte(23)
      ..write(obj.file10)
      ..writeByte(24)
      ..write(obj.file11)
      ..writeByte(25)
      ..write(obj.file12)
      ..writeByte(26)
      ..write(obj.file13)
      ..writeByte(27)
      ..write(obj.file14)
      ..writeByte(28)
      ..write(obj.file15)
      ..writeByte(29)
      ..write(obj.file16)
      ..writeByte(30)
      ..write(obj.file17)
      ..writeByte(31)
      ..write(obj.file18)
      ..writeByte(32)
      ..write(obj.file19)
      ..writeByte(33)
      ..write(obj.file1)
      ..writeByte(34)
      ..write(obj.file20)
      ..writeByte(35)
      ..write(obj.file21)
      ..writeByte(36)
      ..write(obj.file22)
      ..writeByte(37)
      ..write(obj.file23)
      ..writeByte(38)
      ..write(obj.file24)
      ..writeByte(39)
      ..write(obj.file25)
      ..writeByte(40)
      ..write(obj.file26)
      ..writeByte(41)
      ..write(obj.file27)
      ..writeByte(42)
      ..write(obj.file28)
      ..writeByte(43)
      ..write(obj.file29)
      ..writeByte(44)
      ..write(obj.file2)
      ..writeByte(45)
      ..write(obj.file30)
      ..writeByte(46)
      ..write(obj.file31)
      ..writeByte(47)
      ..write(obj.file32)
      ..writeByte(48)
      ..write(obj.file33)
      ..writeByte(49)
      ..write(obj.file34)
      ..writeByte(50)
      ..write(obj.file35)
      ..writeByte(51)
      ..write(obj.file36)
      ..writeByte(52)
      ..write(obj.file37)
      ..writeByte(53)
      ..write(obj.file38)
      ..writeByte(54)
      ..write(obj.file39)
      ..writeByte(55)
      ..write(obj.file3)
      ..writeByte(56)
      ..write(obj.file40)
      ..writeByte(57)
      ..write(obj.file41)
      ..writeByte(58)
      ..write(obj.file42)
      ..writeByte(59)
      ..write(obj.file43)
      ..writeByte(60)
      ..write(obj.file44)
      ..writeByte(61)
      ..write(obj.file45)
      ..writeByte(62)
      ..write(obj.file46)
      ..writeByte(63)
      ..write(obj.file47)
      ..writeByte(64)
      ..write(obj.file48)
      ..writeByte(65)
      ..write(obj.file49)
      ..writeByte(66)
      ..write(obj.file4)
      ..writeByte(67)
      ..write(obj.file5)
      ..writeByte(68)
      ..write(obj.file6)
      ..writeByte(69)
      ..write(obj.file7)
      ..writeByte(70)
      ..write(obj.file8)
      ..writeByte(71)
      ..write(obj.file9);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BioHive1Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
