import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../signature_button.dart';

class FormBuilderSign extends StatelessWidget {
  const FormBuilderSign(
      {super.key,
      required this.name,
      this.initialValue});

  final String? initialValue;
  final String name;

  @override
  Widget build(BuildContext context) => FormBuilderField(
      name: name,
      builder: (FormFieldState<String?> field) => SignatureButton(
        onChange: field.setValue,
        initialValue: initialValue,
      ),
    );
}
