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
      attfile10str: fields[23] as String?,
      attfile11str: fields[24] as String?,
      attfile12str: fields[25] as String?,
      attfile13str: fields[26] as String?,
      attfile14str: fields[27] as String?,
      attfile15str: fields[28] as String?,
      attfile16str: fields[29] as String?,
      attfile17str: fields[30] as String?,
      attfile18str: fields[31] as String?,
      attfile19str: fields[32] as String?,
      attfile1str: fields[33] as String?,
      attfile20str: fields[34] as String?,
      attfile21str: fields[35] as String?,
      attfile22str: fields[36] as String?,
      attfile23str: fields[37] as String?,
      attfile24str: fields[38] as String?,
      attfile25str: fields[39] as String?,
      attfile26str: fields[40] as String?,
      attfile27str: fields[41] as String?,
      attfile28str: fields[42] as String?,
      attfile29str: fields[43] as String?,
      attfile2str: fields[44] as String?,
      attfile30str: fields[45] as String?,
      attfile31str: fields[46] as String?,
      attfile32str: fields[47] as String?,
      attfile33str: fields[48] as String?,
      attfile34str: fields[49] as String?,
      attfile35str: fields[50] as String?,
      attfile36str: fields[51] as String?,
      attfile37str: fields[52] as String?,
      attfile38str: fields[53] as String?,
      attfile39str: fields[54] as String?,
      attfile3str: fields[55] as String?,
      attfile40str: fields[56] as String?,
      attfile41str: fields[57] as String?,
      attfile42str: fields[58] as String?,
      attfile43str: fields[59] as String?,
      attfile44str: fields[60] as String?,
      attfile45str: fields[61] as String?,
      attfile46str: fields[62] as String?,
      attfile47str: fields[63] as String?,
      attfile48str: fields[64] as String?,
      attfile49str: fields[65] as String?,
      attfile4str: fields[66] as String?,
      attfile5str: fields[67] as String?,
      attfile6str: fields[68] as String?,
      attfile7str: fields[69] as String?,
      attfile8str: fields[70] as String?,
      attfile9str: fields[71] as String?,
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
      ..write(obj.attfile10str)
      ..writeByte(24)
      ..write(obj.attfile11str)
      ..writeByte(25)
      ..write(obj.attfile12str)
      ..writeByte(26)
      ..write(obj.attfile13str)
      ..writeByte(27)
      ..write(obj.attfile14str)
      ..writeByte(28)
      ..write(obj.attfile15str)
      ..writeByte(29)
      ..write(obj.attfile16str)
      ..writeByte(30)
      ..write(obj.attfile17str)
      ..writeByte(31)
      ..write(obj.attfile18str)
      ..writeByte(32)
      ..write(obj.attfile19str)
      ..writeByte(33)
      ..write(obj.attfile1str)
      ..writeByte(34)
      ..write(obj.attfile20str)
      ..writeByte(35)
      ..write(obj.attfile21str)
      ..writeByte(36)
      ..write(obj.attfile22str)
      ..writeByte(37)
      ..write(obj.attfile23str)
      ..writeByte(38)
      ..write(obj.attfile24str)
      ..writeByte(39)
      ..write(obj.attfile25str)
      ..writeByte(40)
      ..write(obj.attfile26str)
      ..writeByte(41)
      ..write(obj.attfile27str)
      ..writeByte(42)
      ..write(obj.attfile28str)
      ..writeByte(43)
      ..write(obj.attfile29str)
      ..writeByte(44)
      ..write(obj.attfile2str)
      ..writeByte(45)
      ..write(obj.attfile30str)
      ..writeByte(46)
      ..write(obj.attfile31str)
      ..writeByte(47)
      ..write(obj.attfile32str)
      ..writeByte(48)
      ..write(obj.attfile33str)
      ..writeByte(49)
      ..write(obj.attfile34str)
      ..writeByte(50)
      ..write(obj.attfile35str)
      ..writeByte(51)
      ..write(obj.attfile36str)
      ..writeByte(52)
      ..write(obj.attfile37str)
      ..writeByte(53)
      ..write(obj.attfile38str)
      ..writeByte(54)
      ..write(obj.attfile39str)
      ..writeByte(55)
      ..write(obj.attfile3str)
      ..writeByte(56)
      ..write(obj.attfile40str)
      ..writeByte(57)
      ..write(obj.attfile41str)
      ..writeByte(58)
      ..write(obj.attfile42str)
      ..writeByte(59)
      ..write(obj.attfile43str)
      ..writeByte(60)
      ..write(obj.attfile44str)
      ..writeByte(61)
      ..write(obj.attfile45str)
      ..writeByte(62)
      ..write(obj.attfile46str)
      ..writeByte(63)
      ..write(obj.attfile47str)
      ..writeByte(64)
      ..write(obj.attfile48str)
      ..writeByte(65)
      ..write(obj.attfile49str)
      ..writeByte(66)
      ..write(obj.attfile4str)
      ..writeByte(67)
      ..write(obj.attfile5str)
      ..writeByte(68)
      ..write(obj.attfile6str)
      ..writeByte(69)
      ..write(obj.attfile7str)
      ..writeByte(70)
      ..write(obj.attfile8str)
      ..writeByte(71)
      ..write(obj.attfile9str);
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
