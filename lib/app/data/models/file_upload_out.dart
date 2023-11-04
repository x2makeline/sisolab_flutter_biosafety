import 'package:json_annotation/json_annotation.dart';
part 'file_upload_out.g.dart';


@JsonSerializable()
class FileUploadOut {


  final List<String> filePaths;
  FileUploadOut({required this.filePaths});

  factory FileUploadOut.fromJson(Map<String, dynamic> json) => _$FileUploadOutFromJson(json);

  Map<String, dynamic> toJson() => _$FileUploadOutToJson(this);
}