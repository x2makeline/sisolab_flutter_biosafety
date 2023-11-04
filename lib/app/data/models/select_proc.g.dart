// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_proc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectProc _$SelectProcFromJson(Map<String, dynamic> json) => SelectProc(
      comAddress: json['com_address'] as String?,
      comCode: json['com_code'] as String?,
      comName: json['com_name'] as String?,
      tableName: json['table_name'] as String?,
      idx: json['idx'] as int?,
      status: json['status'] as String?,
      docno: json['docno'] as String?,
      company: json['company'] as String?,
      regId: json['reg_id'] as String?,
      simAuth: json['sim_auth'] as int?,
      gbn: json['gbn'] as String?,
      reg_datetime: json['reg_datetime'] as int?,
      printSubmitDt: json['print_submit_dt'] as String?,
    );

Map<String, dynamic> _$SelectProcToJson(SelectProc instance) =>
    <String, dynamic>{
      'com_address': instance.comAddress,
      'com_name': instance.comName,
      'com_code': instance.comCode,
      'table_name': instance.tableName,
      'idx': instance.idx,
      'status': instance.status,
      'docno': instance.docno,
      'company': instance.company,
      'reg_id': instance.regId,
      'sim_auth': instance.simAuth,
      'gbn': instance.gbn,
      'reg_datetime': instance.reg_datetime,
      'print_submit_dt': instance.printSubmitDt,
    };
