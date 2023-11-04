import 'dart:io';
import 'dart:typed_data';

import 'package:hive/hive.dart';
import 'package:sisolab_flutter_biosafety/core/utils/mc_logger.dart';

part 'bio_io_file.g.dart';

@HiveType(typeId: 1)
class BioIoFile {
  @HiveField(0)
  List<String>? d201;

  BioIoFile({this.d201});


  BioIoFile.fromMapDynamic(Map<String, dynamic> v) {
    d201 = v['d201'];
  }


}

