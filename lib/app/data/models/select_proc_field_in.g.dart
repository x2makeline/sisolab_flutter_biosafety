// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_proc_field_in.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectProcFieldIn _$SelectProcFieldInFromJson(Map<String, dynamic> json) =>
    SelectProcFieldIn(
      gbn: $enumDecode(_$GbnEnumMap, json['gbn']),
      idx: json['idx'] as int,
    );

Map<String, dynamic> _$SelectProcFieldInToJson(SelectProcFieldIn instance) =>
    <String, dynamic>{
      'gbn': _$GbnEnumMap[instance.gbn]!,
      'idx': instance.idx,
    };

const _$GbnEnumMap = {
  Gbn.fd2: 'fd2',
  Gbn.fd1: 'fd1',
};
