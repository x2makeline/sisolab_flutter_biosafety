// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_upload_out.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FileUploadOut _$FileUploadOutFromJson(Map<String, dynamic> json) =>
    FileUploadOut(
      filePaths:
          (json['filePaths'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$FileUploadOutToJson(FileUploadOut instance) =>
    <String, dynamic>{
      'filePaths': instance.filePaths,
    };
