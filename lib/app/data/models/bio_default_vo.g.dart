// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bio_default_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BioDefaultVo _$BioDefaultVoFromJson(Map<String, dynamic> json) => BioDefaultVo(
      searchCondition: json['searchCondition'] as String? ?? "",
      searchKeyword: json['searchKeyword'] as String? ?? "",
      searchUseYn: json['searchUseYn'] as String? ?? "",
      pageIndex: json['pageIndex'] as int? ?? 1,
      pageUnit: json['pageUnit'] as int? ?? 10,
      pageSize: json['pageSize'] as int? ?? 10,
      firstIndex: json['firstIndex'] as int? ?? 1,
      lastIndex: json['lastIndex'] as int? ?? 1,
      recordCountPerPage: json['recordCountPerPage'] as int? ?? 10,
      searchStatus: json['searchStatus'] as String,
      searchDate1: json['searchDate1'] as String,
      searchDate2: json['searchDate2'] as String,
    );

Map<String, dynamic> _$BioDefaultVoToJson(BioDefaultVo instance) =>
    <String, dynamic>{
      'searchCondition': instance.searchCondition,
      'searchKeyword': instance.searchKeyword,
      'searchUseYn': instance.searchUseYn,
      'pageIndex': instance.pageIndex,
      'pageUnit': instance.pageUnit,
      'pageSize': instance.pageSize,
      'firstIndex': instance.firstIndex,
      'lastIndex': instance.lastIndex,
      'recordCountPerPage': instance.recordCountPerPage,
      'searchStatus': instance.searchStatus,
      'searchDate1': instance.searchDate1,
      'searchDate2': instance.searchDate2,
    };
