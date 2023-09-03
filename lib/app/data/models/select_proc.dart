import 'package:json_annotation/json_annotation.dart';

part 'select_proc.g.dart';

@JsonSerializable()
class SelectProc {
  String? d3;
  String? d4;
  String? d5;
  @JsonKey(name: "com_address")
  String? comAddress;
  @JsonKey(name: "com_name")
  String? comName;
  @JsonKey(name: "com_code")
  String? comCode;
  String? attfile11str;
  @JsonKey(name: "table_name")
  String? tableName;
  String? attfile15str;
  String? attfile4str;
  String? attfile8str;
  String? attfile20str;
  String? attfile10str;
  String? attfile14str;
  String? attfile19str;
  String? attfile3str;
  @JsonKey(name: "att_name_txt_20")
  String? attNameTxt20;
  String? attfile18str;
  String? attfile7str;
  int? idx;
  String? status;
  String? docno;
  String? attfile13str;
  String? attfile17str;
  String? attfile6str;
  @JsonKey(name: "att_name_txt_13")
  String? attNameTxt13;
  @JsonKey(name: "att_name_txt_12")
  String? attNameTxt12;
  String? attfile2str;
  @JsonKey(name: "att_name_txt_11")
  String? attNameTxt11;
  @JsonKey(name: "att_name_txt_10")
  String? attNameTxt10;
  @JsonKey(name: "att_name_txt_17")
  String? attNameTxt17;
  @JsonKey(name: "att_name_txt_16")
  String? attNameTxt16;
  @JsonKey(name: "att_name_txt_15")
  String? attNameTxt15;
  String? company;
  @JsonKey(name: "att_name_txt_14")
  String? attNameTxt14;
  @JsonKey(name: "att_name_txt_19")
  String? attNameTxt19;
  @JsonKey(name: "submit_datetime")
  String? submitDatetime;
  @JsonKey(name: "att_name_txt_18")
  String? attNameTxt18;
  @JsonKey(name: "att_name_txt_4")
  String? attNameTxt4;
  @JsonKey(name: "att_name_txt_3")
  String? attNameTxt3;
  @JsonKey(name: "att_name_txt_2")
  String? attNameTxt2;
  @JsonKey(name: "att_name_txt_1")
  String? attNameTxt1;
  @JsonKey(name: "reg_id")
  String? regId;
  @JsonKey(name: "sim_auth")
  int? simAuth;
  String? attfile12str;
  String? attfile16str;
  String? gbn;
  String? attfile5str;
  @JsonKey(name: "reg_datetime")
  int? reg_datetime;
  String? attfile1str;
  String? attfile9str;
  @JsonKey(name: "print_submit_dt")
  String? printSubmitDt;
  @JsonKey(name: "att_name_txt_9")
  String? attNameTxt9;
  @JsonKey(name: "att_name_txt_8")
  String? attNameTxt8;
  @JsonKey(name: "att_name_txt_7")
  String? attNameTxt7;
  @JsonKey(name: "att_name_txt_6")
  String? attNameTxt6;
  @JsonKey(name: "att_name_txt_5")
  String? attNameTxt5;

  SelectProc(
      {this.d3,
      this.d4,
      this.d5,
      this.comAddress,
      this.comCode,
      this.comName,
      this.attfile11str,
      this.tableName,
      this.attfile15str,
      this.attfile4str,
      this.attfile8str,
      this.attfile20str,
      this.attfile10str,
      this.attfile14str,
      this.attfile19str,
      this.attfile3str,
      this.attNameTxt20,
      this.attfile18str,
      this.attfile7str,
      this.idx = 0,
      this.status,
      this.docno,
      this.attfile13str,
      this.attfile17str,
      this.attfile6str,
      this.attNameTxt13,
      this.attNameTxt12,
      this.attfile2str,
      this.attNameTxt11,
      this.attNameTxt10,
      this.attNameTxt17,
      this.attNameTxt16,
      this.attNameTxt15,
      this.company,
      this.attNameTxt14,
      this.attNameTxt19,
      this.submitDatetime,
      this.attNameTxt18,
      this.attNameTxt4,
      this.attNameTxt3,
      this.attNameTxt2,
      this.attNameTxt1,
      this.regId,
      this.simAuth = 0,
      this.attfile12str,
      this.attfile16str,
      this.gbn,
      this.attfile5str,
      this.reg_datetime = 0,
      this.attfile1str,
      this.attfile9str,
      this.printSubmitDt,
      this.attNameTxt9,
      this.attNameTxt8,
      this.attNameTxt7,
      this.attNameTxt6,
      this.attNameTxt5});

  factory SelectProc.fromJson(Map<String, dynamic> json) =>
      _$SelectProcFromJson(json);

  Map<String, dynamic> toJson() => _$SelectProcToJson(this);
}
