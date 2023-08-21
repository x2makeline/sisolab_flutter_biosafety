import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormBuilderNote extends StatelessWidget {
  const FormBuilderNote({super.key, required this.name, this.onSaved});

  final String name;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      onSaved: onSaved,
      name: name,
      maxLines: 3,

      keyboardType: TextInputType.multiline,
      style: TextStyle(

          fontSize: 28.sp,
      ),
      decoration: const InputDecoration(hintText: "관련 내용을 입력해주세요.", constraints: BoxConstraints()),
    );
  }
}
