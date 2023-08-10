import 'package:json_annotation/json_annotation.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_list_item.dart';

part 'select_proc_list_out.g.dart';

@JsonSerializable()
class SelectProcListOut {
  List<SelectProcListItem> data;

  SelectProcListOut({required this.data});

  factory SelectProcListOut.fromJson(Map<String, dynamic> json) =>
      _$SelectProcListOutFromJson(json);

  Map<String, dynamic> toJson() => _$SelectProcListOutToJson(this);
}
