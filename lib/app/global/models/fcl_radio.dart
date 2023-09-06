import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FclRadio {
  final bool labelWithKey;
  final String name;
  final String? initialValue;
  final Map<String, String> map;
  final WrapAlignment wrapAlignment;
  final OptionsOrientation orientation;

  FclRadio(
      {required this.name,
      required this.map,
      this.labelWithKey = false,
      this.initialValue,
      this.wrapAlignment = WrapAlignment.start,
      this.orientation = OptionsOrientation.wrap});
}
