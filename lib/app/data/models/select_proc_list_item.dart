import 'package:json_annotation/json_annotation.dart';

part 'select_proc_list_item.g.dart';

@JsonSerializable()
class SelectProcListItem {
  /// 최근점검일
  String d168;
  @JsonKey(name: "mod_user_name")
  String modUserName;

  /// 장소(시설명)
  String d184;
  int simcnt;

  /// 문서번호
  String docno;
  String title;

  /// 등록자
  @JsonKey(name: 'reg_id')
  String regId;
  @JsonKey(name: 'gbn_nm')
  String gbnNm;
  String gbn;
  @JsonKey(name: 'RNUM')
  int rnum;
  int totalCnt;
  @JsonKey(name: 'mod_id')
  String modId;

  /// 작성일자
  @JsonKey(name: 'mod_datetime')
  String modDatetime;
  @JsonKey(name: 'reg_datetime')
  int regDatetime;
  @JsonKey(name: 'status_nm')
  String statusNm;

  /// 기관명
  String company;
  int idx;

  /// 최초허가일
  String d158;
  String status;

  SelectProcListItem(
      {this.d168 = "",
      this.modUserName = "",
      this.d184 = "",
      this.simcnt = 0,
      this.docno = "",
      this.title = "",
      this.regId = "",
      this.gbnNm = "",
      this.gbn = "",
      this.rnum = 0,
      this.totalCnt = 0,
      this.modId = "",
      this.modDatetime = "",
      this.regDatetime = 0,
      this.statusNm = "",
      this.company = "",
      this.idx = 0,
      this.d158 = "",
      this.status = ""});

  factory SelectProcListItem.fromJson(Map<String, dynamic> json) =>
      _$SelectProcListItemFromJson(json);

  Map<String, dynamic> toJson() => _$SelectProcListItemToJson(this);
}
