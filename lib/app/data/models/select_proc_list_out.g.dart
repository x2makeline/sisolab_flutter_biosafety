// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_proc_list_out.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectProcListOut _$SelectProcListOutFromJson(Map<String, dynamic> json) =>
    SelectProcListOut(
      data: (json['data'] as List<dynamic>)
          .map((e) => SelectProcListItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SelectProcListOutToJson(SelectProcListOut instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
