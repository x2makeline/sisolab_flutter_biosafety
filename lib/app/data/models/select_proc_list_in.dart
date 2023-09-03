import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/gbn.dart';
import 'package:sisolab_flutter_biosafety/core/utils/converters/date_time_converter.dart';

part 'select_proc_list_in.g.dart';

@CopyWith()
@JsonSerializable()
class SelectProcListIn {
  Gbn gbn;
  int? idx;
  int pageIndex;
  String? searchCompany;
  @DateTimeNullableConverter()
  DateTime? searchDate1;
  @DateTimeNullableConverter()
  DateTime? searchDate2;

  SelectProcListIn(
      {required this.gbn,
      this.idx,
      required this.pageIndex,
      this.searchCompany,
      this.searchDate1,
      this.searchDate2});

  factory SelectProcListIn.fromJson(Map<String, dynamic> json) =>
      _$SelectProcListInFromJson(json);

  Map<String, dynamic> toJson() => _$SelectProcListInToJson(this);

  @override
  String toString() {
    return 'SelectProcListIn{gbn: $gbn, idx: $idx, pageIndex: $pageIndex, searchCompany: $searchCompany, searchDate1: $searchDate1, searchDate2: $searchDate2}';
  }
}
