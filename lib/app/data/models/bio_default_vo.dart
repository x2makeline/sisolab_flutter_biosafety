import 'package:json_annotation/json_annotation.dart';

part 'bio_default_vo.g.dart';

@JsonSerializable()
class BioDefaultVo {
  String searchCondition;
  String searchKeyword;
  String searchUseYn;
  int pageIndex;
  int pageUnit;

  int pageSize;

  int firstIndex;
  int lastIndex;

  int recordCountPerPage;
  String searchStatus;
  String searchDate1;
  String searchDate2;

  BioDefaultVo(
      {this.searchCondition = "",
      this.searchKeyword = "",
      this.searchUseYn = "",
      this.pageIndex = 1,
      this.pageUnit = 10,
      this.pageSize = 10,
      this.firstIndex = 1,
      this.lastIndex = 1,
      this.recordCountPerPage = 10,
      required this.searchStatus,
      required this.searchDate1,
      required this.searchDate2});

  factory BioDefaultVo.fromJson(Map<String, dynamic> json) =>
      _$BioDefaultVoFromJson(json);

  Map<String, dynamic> toJson() => _$BioDefaultVoToJson(this);
}
