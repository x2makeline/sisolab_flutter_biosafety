import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/double.dart';

import '../../models/fcl_type.dart';
import 'fcl_field.dart';

class FclDateField extends FclField {
  FclDateField({super.key, super.label, required super.name})
      : super(
            type: FclType.date,
            builder: () => FormBuilderDateTimePicker(
                inputType: InputType.date,
                name: name,
                decoration: InputDecoration(
                  hintText: "연도. 월. 일.",
                  suffixIcon: Image.asset(
                    "assets/images/icon_calender.png",
                    scale: 5,
                  ),
                )));
}
