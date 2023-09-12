import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/text_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_field.dart';

import '../models/fcl_type.dart';

class FclDropdownField extends FclField {
  FclDropdownField(
      {super.key,
      super.label,
      String? initialValue,
      required super.name,
      String hintText = "선택",
      required Map<String, String> itemMap})
      : super(
            type: FclType.text,
            builder: () {
              return SizedBox(
                height: 90.h,
                child: FormBuilderDropdown(
                  initialValue: initialValue,
                  iconSize: buttonTextStyle.fontSize!,
                  style: buttonTextStyle,
                  name: name,
                  itemHeight: max(kMinInteractiveDimension, 90.h),
                  items: [
                    DropdownMenuItem(
                      value: null,
                      child: Text(
                        hintText,
                        style: buttonTextStyle,
                      ),
                    ),
                    ...itemMap.entries
                        .map((e) => DropdownMenuItem(
                              value: e.key,
                              child: Text(
                                e.value,
                                style: buttonTextStyle,
                              ),
                            ))
                        .toList()
                  ],
                ),
              );
            });
}
