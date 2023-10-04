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

  String? file1;
  String? file2;
  String? file3;
  String? file4;
  String? file5;
  String? file6;
  String? file7;
  String? file8;
  String? file9;
  String? file10;
  String? file11;
  String? file12;
  String? file13;
  String? file14;
  String? file15;
  String? file16;
  String? file17;
  String? file18;
  String? file19;
  String? file20;
  String? file21;
  String? file22;
  String? file23;
  String? file24;
  String? file25;
  String? file26;
  String? file27;
  String? file28;
  String? file29;
  String? file30;
  String? file31;
  String? file32;
  String? file33;
  String? file34;
  String? file35;
  String? file36;
  String? file37;
  String? file38;
  String? file39;
  String? file40;
  String? file41;
  String? file42;
  String? file43;
  String? file44;
  String? file45;
  String? file46;
  String? file47;
  String? file48;
  String? file49;
  String? file50;
  String? file51;
  String? file52;
  String? file53;
  String? file54;
  String? file55;
  String? file56;
  String? file57;
  String? file58;
  String? file59;
  String? file60;
  String? file61;
  String? file62;
  String? file63;
  String? file64;
  String? file65;
  String? file66;
  String? file67;
  String? file68;
  String? file69;
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
    this.file1,
    this.file2,
    this.file3,
    this.file4,
    this.file5,
    this.file6,
    this.file7,
    this.file8,
    this.file9,
    this.file10,
    this.file11,
    this.file12,
    this.file13,
    this.file14,
    this.file15,
    this.file16,
    this.file17,
    this.file18,
    this.file19,
    this.file20,
    this.file21,
    this.file22,
    this.file23,
    this.file24,
    this.file25,
    this.file26,
    this.file27,
    this.file28,
    this.file29,
    this.file30,
    this.file31,
    this.file32,
    this.file33,
    this.file34,
    this.file35,
    this.file36,
    this.file37,
    this.file38,
    this.file39,
    this.file40,
    this.file41,
    this.file42,
    this.file43,
    this.file44,
    this.file45,
    this.file46,
    this.file47,
    this.file48,
    this.file49,
    this.file50,
    this.file51,
    this.file52,
    this.file53,
    this.file54,
    this.file55,
    this.file56,
    this.file57,
    this.file58,
    this.file59,
    this.file60,
    this.file61,
    this.file62,
    this.file63,
    this.file64,
    this.file65,
    this.file66,
    this.file67,
    this.file68,
    this.file69,
  });

  factory SelectProc.fromJson(Map<String, dynamic> json) =>
      _$SelectProcFromJson(json);

  Map<String, dynamic> toJson() => _$SelectProcToJson(this);
}
