// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_proc_list_in.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectProcListIn _$SelectProcListInFromJson(Map<String, dynamic> json) =>
    SelectProcListIn(
      gbn: $enumDecode(_$GbnEnumMap, json['gbn']),
      idx: json['idx'] as int?,
      firstIndex: json['firstIndex'] as int,
      lastIndex: json['lastIndex'] as int,
    );

Map<String, dynamic> _$SelectProcListInToJson(SelectProcListIn instance) =>
    <String, dynamic>{
      'gbn': _$GbnEnumMap[instance.gbn]!,
      'idx': instance.idx,
      'firstIndex': instance.firstIndex,
      'lastIndex': instance.lastIndex,
    };

const _$GbnEnumMap = {
  Gbn.fd2: 'fd2',
  Gbn.fd3: 'fd3',
};
