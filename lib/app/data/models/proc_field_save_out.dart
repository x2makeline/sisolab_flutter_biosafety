import 'package:json_annotation/json_annotation.dart';

part 'proc_field_save_out.g.dart';


@JsonSerializable()
class ProcFieldSaveOut {
  ProcFieldSaveOut();

  factory ProcFieldSaveOut.fromJson(Map<String, dynamic> json) => _$ProcFieldSaveOutFromJson(json);

  Map<String, dynamic> toJson() => _$ProcFieldSaveOutToJson(this);
}