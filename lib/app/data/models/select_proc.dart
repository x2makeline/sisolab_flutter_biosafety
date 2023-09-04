import 'package:json_annotation/json_annotation.dart';

part 'select_proc.g.dart';

@JsonSerializable()
class SelectProc {
  @JsonKey(name: "com_address")
  String? comAddress;
  @JsonKey(name: "com_name")
  String? comName;
  @JsonKey(name: "com_code")
  String? comCode;
  @JsonKey(name: "table_name")
  String? tableName;

  int? idx;
  String? status;
  String? docno;

  String? company;

  @JsonKey(name: "reg_id")
  String? regId;
  @JsonKey(name: "sim_auth")
  int? simAuth;
  String? gbn;
  @JsonKey(name: "reg_datetime")
  int? reg_datetime;
  @JsonKey(name: "print_submit_dt")
  String? printSubmitDt;

  String? attfile1str;
  String? attfile2str;
  String? attfile3str;
  String? attfile4str;
  String? attfile5str;
  String? attfile6str;
  String? attfile7str;
  String? attfile8str;
  String? attfile9str;
  String? attfile10str;
  String? attfile11str;
  String? attfile12str;
  String? attfile13str;
  String? attfile14str;
  String? attfile15str;
  String? attfile16str;
  String? attfile17str;
  String? attfile18str;
  String? attfile19str;
  String? attfile20str;
  @JsonKey(name: "att_name_txt_1")
  String? attNameTxt1;
  @JsonKey(name: "att_name_txt_2")
  String? attNameTxt2;
  @JsonKey(name: "att_name_txt_3")
  String? attNameTxt3;
  @JsonKey(name: "att_name_txt_4")
  String? attNameTxt4;
  @JsonKey(name: "att_name_txt_5")
  String? attNameTxt5;
  @JsonKey(name: "att_name_txt_6")
  String? attNameTxt6;
  @JsonKey(name: "att_name_txt_7")
  String? attNameTxt7;
  @JsonKey(name: "att_name_txt_8")
  String? attNameTxt8;
  @JsonKey(name: "att_name_txt_9")
  String? attNameTxt9;
  @JsonKey(name: "att_name_txt_10")
  String? attNameTxt10;
  @JsonKey(name: "att_name_txt_11")
  String? attNameTxt11;
  @JsonKey(name: "att_name_txt_12")
  String? attNameTxt12;
  @JsonKey(name: "att_name_txt_13")
  String? attNameTxt13;
  @JsonKey(name: "att_name_txt_14")
  String? attNameTxt14;
  @JsonKey(name: "att_name_txt_15")
  String? attNameTxt15;
  @JsonKey(name: "att_name_txt_16")
  String? attNameTxt16;
  @JsonKey(name: "att_name_txt_17")
  String? attNameTxt17;
  @JsonKey(name: "att_name_txt_18")
  String? attNameTxt18;
  @JsonKey(name: "att_name_txt_19")
  String? attNameTxt19;
  @JsonKey(name: "att_name_txt_20")
  String? attNameTxt20;

  SelectProc({
    this.comAddress,
    this.comCode,
    this.comName,
    this.tableName,
    this.idx,
    this.status,
    this.docno,
    this.company,
    this.regId,
    this.simAuth,
    this.gbn,
    this.reg_datetime,
    this.printSubmitDt,
    this.attNameTxt1,
    this.attNameTxt2,
    this.attNameTxt3,
    this.attNameTxt4,
    this.attNameTxt5,
    this.attNameTxt6,
    this.attNameTxt7,
    this.attNameTxt8,
    this.attNameTxt9,
    this.attNameTxt10,
    this.attNameTxt11,
    this.attNameTxt12,
    this.attNameTxt13,
    this.attNameTxt14,
    this.attNameTxt15,
    this.attNameTxt16,
    this.attNameTxt17,
    this.attNameTxt18,
    this.attNameTxt19,
    this.attNameTxt20,
    this.attfile1str,
    this.attfile2str,
    this.attfile3str,
    this.attfile4str,
    this.attfile5str,
    this.attfile6str,
    this.attfile7str,
    this.attfile8str,
    this.attfile9str,
    this.attfile10str,
    this.attfile11str,
    this.attfile12str,
    this.attfile13str,
    this.attfile14str,
    this.attfile15str,
    this.attfile16str,
    this.attfile17str,
    this.attfile18str,
    this.attfile19str,
    this.attfile20str,
  });

  factory SelectProc.fromJson(Map<String, dynamic> json) =>
      _$SelectProcFromJson(json);

  Map<String, dynamic> toJson() => _$SelectProcToJson(this);
}
