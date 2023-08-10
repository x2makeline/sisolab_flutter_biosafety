import 'package:json_annotation/json_annotation.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/gbn.dart';

part 'select_proc_field_in.g.dart';

@JsonSerializable()
class SelectProcFieldIn {
  Gbn gbn;
  int idx;

  SelectProcFieldIn({required this.gbn, required this.idx});

  factory SelectProcFieldIn.fromJson(Map<String, dynamic> json) =>
      _$SelectProcFieldInFromJson(json);

  Map<String, dynamic> toJson() => _$SelectProcFieldInToJson(this);
}
