import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/double.dart';

import '../../models/fcl_type.dart';
import 'fcl_field.dart';

class FclTextField extends FclField {
  FclTextField(
      {super.key, super.label, required String hintText, required super.name})
      : super(
            type: FclType.text,
            builder: () => FormBuilderTextField(
                name: name,
                style: TextStyle(
                  fontSize: 28.sp,
                  color: const Color(0xff101010)
                ),
                decoration: InputDecoration(hintText: hintText, border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffe0e0e0)
                  )
                )),
              ));
}
