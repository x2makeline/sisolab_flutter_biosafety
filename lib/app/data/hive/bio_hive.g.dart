// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bio_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BioHiveAdapter extends TypeAdapter<BioHive> {
  @override
  final int typeId = 0;

  @override
  BioHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BioHive(
      bioIo: (fields[0] as Map).cast<String, dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, BioHive obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.bioIo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BioHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
