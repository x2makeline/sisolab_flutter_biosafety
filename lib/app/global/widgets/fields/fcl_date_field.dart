import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../models/fcl_type.dart';
import 'fcl_field.dart';

class FclDateField extends FclField {
  FclDateField({super.key, super.label, required super.name})
      : super(
            type: FclType.date,
            builder: () {
              return FormBuilderDateTimePicker(
                inputType: InputType.date,
                name: name,
                decoration: const InputDecoration(
                    hintText: "연도. 월. 일.", suffixIcon: Icon(Icons.date_range)),
              );
            });
}
