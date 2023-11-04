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

  });

  factory SelectProc.fromJson(Map<String, dynamic> json) =>
      _$SelectProcFromJson(json);

  Map<String, dynamic> toJson() => _$SelectProcToJson(this);
}
