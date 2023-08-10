import 'package:json_annotation/json_annotation.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/gbn.dart';

part 'select_proc_list_in.g.dart';

@JsonSerializable()
class SelectProcListIn {
  Gbn gbn;
  int? idx;
  int firstIndex;
  int lastIndex;


  SelectProcListIn({required this.gbn, this.idx, required this.firstIndex, required this.lastIndex});

  factory SelectProcListIn.fromJson(Map<String, dynamic> json) =>
      _$SelectProcListInFromJson(json);

  Map<String, dynamic> toJson() => _$SelectProcListInToJson(this);
}
