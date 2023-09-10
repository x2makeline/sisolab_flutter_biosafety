import 'dart:io';

import 'package:excel/excel.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';

extension BioListExt on List<BioIo> {
  get excel async {
    final ex = Excel.createExcel();
    final sheetName = ex.sheets.values.first.sheetName;
    ['기관명', '장소(시설명)', '임시저장일'].asMap().forEach((i, v) {
      ex.updateCell(
        sheetName,
        CellIndex.indexByColumnRow(columnIndex: i, rowIndex: 0),
        v,
      );
    });

    asMap().forEach((key, value) {
      print(value);
      ex.updateCell(
        sheetName,
        CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: key + 1),
        value.company ?? "",
      );
      ex.updateCell(
        sheetName,
        CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: key + 1),
        value.d184 ?? "",
      );
      ex.updateCell(
        sheetName,
        CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: key + 1),
        value.localRegDateTime ?? "",
      );
    });

    final directory = Directory('/storage/emulated/0/Download');

    final file = File('${directory.path}/excel.xlsx');
    await file.writeAsBytes(ex.encode()!);
    Get.snackbar("메세지", "파일 다운로드 완료");
  }
}
