import 'package:json_annotation/json_annotation.dart';
import 'package:sisolab_flutter_biosafety/core/utils/converters/date_time_converter.dart';

part 'bio_search_in.g.dart';

@JsonSerializable()
class BioSearchIn {
  String? company;
  @DateTimeNullableConverter()
  DateTime? date1;
  @DateTimeNullableConverter()
  DateTime? date2;

  BioSearchIn({this.company, this.date1, this.date2});

  factory BioSearchIn.fromJson(Map<String, dynamic> json) =>
      _$BioSearchInFromJson(json);

  Map<String, dynamic> toJson() => _$BioSearchInToJson(this);
}

enum BioSearchInName {
  /// 제출기관
  company,

  /// 기간선택 - 시작
  date1,

  /// 기간선택 - 종료
  date2,
}
