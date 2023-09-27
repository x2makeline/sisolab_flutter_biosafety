import 'package:json_annotation/json_annotation.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/gbn.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_field_in.dart';

part 'proc_pre_field_in.g.dart';

@JsonSerializable()
class ProcPreFieldIn  {
  String company;
  String d184;
  Gbn gbn;

  ProcPreFieldIn(
      {required this.company,
      required this.d184,
      required this.gbn,
      });

  factory ProcPreFieldIn.fromJson(Map<String, dynamic> json) =>
      _$ProcPreFieldInFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProcPreFieldInToJson(this);
}
