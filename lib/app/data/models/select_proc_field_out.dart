import 'package:json_annotation/json_annotation.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_field.dart';

part 'select_proc_field_out.g.dart';


@JsonSerializable()
class SelectProcFieldOut {
  SelectProc proc;
  SelectProcField field; 

  SelectProcFieldOut({required this.proc, required this.field});


  @override
  String toString() => 'SelectProcFieldOut{proc: $proc, field: $field}';

    factory SelectProcFieldOut.fromJson(Map<String, dynamic> json) =>
          _$SelectProcFieldOutFromJson(json);

      Map<String, dynamic> toJson() => _$SelectProcFieldOutToJson(this);
}
