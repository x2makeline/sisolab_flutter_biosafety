import 'package:dartlin/control_flow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:sisolab_flutter_biosafety/app/global/decorations/input_decoration.dart';
import 'package:velocity_x/velocity_x.dart';

class FclFormBuilderDateTimePicker extends StatelessWidget {
  const FclFormBuilderDateTimePicker(
      {super.key,
      this.controller,
      required this.name,
      this.initialDate,
      this.firstDate,
      this.lastDate});

  static final _format = DateFormat("yyyy-MM-dd");
  final TextEditingController? controller;
  final String name;
  static final _initialFirstDate =
      DateTime.now().subtract(const Duration(days: 999));
  static final _initialLastDate = DateTime.now().add(const Duration(days: 999));
  final String? initialDate;

  final DateTime? firstDate;
  final DateTime? lastDate;

  @override
  Widget build(BuildContext context) {
    return FormBuilderDateTimePicker(
      initialDate: initialDate?.let((it) => _format.parse(it)),
      initialValue: initialDate?.let((it) => _format.parse(it)),
      key: super.key,
      format: _format,
      controller: controller,
      inputType: InputType.date,
      style: context.textTheme.titleMedium
          ?.copyWith(color: const Color(0xff767676)),
      decoration: dateInputDecoration,
      name: name,
      firstDate: firstDate ?? _initialFirstDate,
      lastDate: lastDate ?? _initialLastDate,
    );
  }
}
