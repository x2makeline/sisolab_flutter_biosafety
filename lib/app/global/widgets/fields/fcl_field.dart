import 'package:flutter/material.dart';

import '../../widgets/field_with_label.dart';
import '../../models/fcl_type.dart';

abstract class FclField extends StatefulWidget {
  const FclField(
      {Key? key,
      required this.name,
      this.label,
      required this.type,
      required this.builder})
      : super(key: key);

  final String? label;
  final FclType type;
  final String name;
  final Widget Function() builder;

  @override
  State<FclField> createState() => _FclFieldState();
}

class _FclFieldState extends State<FclField> {
  @override
  Widget build(BuildContext context) {
    return FieldWithLabel(label: widget.label, child: widget.builder());
    ;
  }
}
