import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../models/fcl_type.dart';
import 'fcl_field.dart';

class FclTextField extends FclField {
  FclTextField(
      {super.key, super.label, required String hintText, required super.name})
      : super(
            type: FclType.text,
            builder: () {
              return FormBuilderTextField(
                name: name,
                decoration: InputDecoration(hintText: hintText),
              );
            });
}
