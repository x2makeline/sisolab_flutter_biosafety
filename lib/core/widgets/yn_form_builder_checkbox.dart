import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sisolab_flutter_biosafety/core/models/yn.dart';

class YnFormBuilderCheckbox extends StatelessWidget {
  const YnFormBuilderCheckbox(
      {super.key, required this.name, required this.title, this.initialValue});

  final String name;
  final Widget title;
  final bool? initialValue;

  static bool _toBool(Yn? yn) => yn == Yn.y;

  static Yn _toYn(bool? b) => b != null || b! ? Yn.y : Yn.n;

  @override
  Widget build(BuildContext context) {
    return FormBuilderCheckbox(
      name: name,

      initialValue: initialValue,
      title: title,
    );
  }
}
