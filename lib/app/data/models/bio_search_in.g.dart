// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bio_search_in.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BioSearchIn _$BioSearchInFromJson(Map<String, dynamic> json) => BioSearchIn(
      company: json['company'] as String?,
      date1:
          const DateTimeNullableConverter().fromJson(json['date1'] as String?),
      date2:
          const DateTimeNullableConverter().fromJson(json['date2'] as String?),
    );

Map<String, dynamic> _$BioSearchInToJson(BioSearchIn instance) =>
    <String, dynamic>{
      'company': instance.company,
      'date1': const DateTimeNullableConverter().toJson(instance.date1),
      'date2': const DateTimeNullableConverter().toJson(instance.date2),
    };
