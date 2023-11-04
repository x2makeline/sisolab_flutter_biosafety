// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bio_io_file.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BioIoFileAdapter extends TypeAdapter<BioIoFile> {
  @override
  final int typeId = 1;

  @override
  BioIoFile read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BioIoFile(
      d201: (fields[0] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, BioIoFile obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.d201);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BioIoFileAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
