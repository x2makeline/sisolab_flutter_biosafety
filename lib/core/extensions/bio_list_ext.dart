import 'dart:io';

import 'package:excel/excel.dart';
import 'package:open_file_plus/open_file_plus.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';

extension BioListExt on List<BioIo> {
  downloadExcel() async {
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

    // file.open();
    print(file.path);
    OpenFile.open(file.path);

    // await Dio().download(
    //     file : file.path,
    //     // savePath,
    //     onReceiveProgress: (received, total) {
    //       if (total != -1) {
    //         print((received / total * 100).toStringAsFixed(0) + "%");
    //         //you can build progressbar feature too
    //       }
    //     });

    // Get.snackbar("메세지", "파일 다운로드 완료");
  }
}
