// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proc_pre_field_in.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProcPreFieldIn _$ProcPreFieldInFromJson(Map<String, dynamic> json) =>
    ProcPreFieldIn(
      company: json['company'] as String,
      d184: json['d184'] as String,
      gbn: $enumDecode(_$GbnEnumMap, json['gbn']),
      idx: json['idx'] as int,
    );

Map<String, dynamic> _$ProcPreFieldInToJson(ProcPreFieldIn instance) =>
    <String, dynamic>{
      'gbn': _$GbnEnumMap[instance.gbn]!,
      'idx': instance.idx,
      'company': instance.company,
      'd184': instance.d184,
    };

const _$GbnEnumMap = {
  Gbn.fd2: 'fd2',
  Gbn.fd1: 'fd1',
  Gbn.fd3: 'fd3',
};
