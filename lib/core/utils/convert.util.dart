import 'dart:convert';
import 'dart:typed_data';

import 'package:dartlin/control_flow.dart';

String uint8ListTob64(Uint8List uint8list) {
  String base64String = base64Encode(uint8list);
  String header = "data:image/png;base64,";
  return header + base64String;
}


String? boolToYn(bool? v) => v?.let((it) => it ? "Y" : "N");