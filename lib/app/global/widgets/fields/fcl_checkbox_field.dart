import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../models/fcl_type.dart';
import 'fcl_field.dart';

class FclCheckboxField extends FclField {
  FclCheckboxField({super.key, required String label, required super.name})
      : super(
            type: FclType.checkbox,
            builder: () {
              return FormBuilderCheckbox(
                name: name,
                title: Text(label ?? ""),
              );
            });
}
