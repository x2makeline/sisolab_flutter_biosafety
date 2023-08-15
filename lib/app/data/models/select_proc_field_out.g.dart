// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_proc_field_out.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectProcFieldOut _$SelectProcFieldOutFromJson(Map<String, dynamic> json) =>
    SelectProcFieldOut(
      proc: SelectProc.fromJson(json['proc'] as Map<String, dynamic>),
      field: SelectProcField.fromJson(json['field'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SelectProcFieldOutToJson(SelectProcFieldOut instance) =>
    <String, dynamic>{
      'proc': instance.proc,
      'field': instance.field,
    };
