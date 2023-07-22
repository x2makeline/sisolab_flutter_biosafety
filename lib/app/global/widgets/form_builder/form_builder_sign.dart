import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../signature_button.dart';

class FormBuilderSign extends StatelessWidget {
  const FormBuilderSign({super.key, required this.name, this.width = 57, this.height = 57});

  final String name;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height : height,
      width : width,
      child: FormBuilderField(
        name: name,
        builder: (FormFieldState<Uint8List> field) => SignatureButton(
          onChange: field.setValue,
        ),
      ),
    );
  }
}
