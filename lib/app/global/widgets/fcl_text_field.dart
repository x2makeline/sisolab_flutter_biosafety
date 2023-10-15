import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sisolab_flutter_biosafety/app/global/decorations/input_decoration.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/text_styles.dart';

import '../models/fcl_type.dart';
import 'fcl_field.dart';

class FclTextField extends FclField {
  final String? initialValue;

  FclTextField(
      {this.initialValue,
      super.key,
      super.label,
      void Function(String?)? onSubmitted,
      String? hintText,
      TextEditingController? textEditingController,
      FocusNode? focusNode,
      bool enabled = true,
      required super.name})
      : super(
            type: FclType.text,
            builder: () => FormBuilderTextField(
                  enabled: enabled,
                  name: name,
                  focusNode: focusNode,
                  controller: textEditingController,
                  onSubmitted: onSubmitted,
                  initialValue: initialValue,
                  style: buttonTextStyle,
                  decoration: textFieldDecoration
                      .copyWith(hintText: hintText)
                      .copyWith(filled: !enabled),
                ));
}
