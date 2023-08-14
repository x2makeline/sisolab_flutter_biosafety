import 'package:json_annotation/json_annotation.dart';

part 'select_proc_list_item.g.dart';

@JsonSerializable()
class SelectProcListItem {
  /// 점검 일자
  String d168;
  String mod_user_name;

  /// 설치 운영 장소
  String d184;
  int simcnt;
  /// 문서번호
  String docno;
  String title;
  /// 등록자
  String reg_id;
  String gbn_nm;
  String gbn;
  int RNUM;
  int totalCnt;
  String mod_id;
  String mod_datetime;
  int reg_datetime;
  String status_nm;
  String company;
  int idx;
  String d158;
  String status;

  SelectProcListItem(
      {this.d168 = "",
      this.mod_user_name = "",
      this.d184 = "",
      this.simcnt = 0,
      this.docno = "",
      this.title = "",
      this.reg_id = "",
      this.gbn_nm = "",
      this.gbn = "",
      this.RNUM = 0,
      this.totalCnt = 0,
      this.mod_id = "",
      this.mod_datetime = "",
      this.reg_datetime = 0,
      this.status_nm = "",
      this.company = "",
      this.idx = 0,
      this.d158 = "",
      this.status = ""});

  factory SelectProcListItem.fromJson(Map<String, dynamic> json) =>
      _$SelectProcListItemFromJson(json);

  Map<String, dynamic> toJson() => _$SelectProcListItemToJson(this);
}
