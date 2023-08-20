import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';

final dateInputDecoration = InputDecoration(
  hintText: "YYYY.MM.DD",
  suffixIconConstraints: BoxConstraints(minHeight: 42.h, maxHeight: 42.h),
  suffixIcon: Padding(
    padding: EdgeInsets.symmetric(horizontal: 24.sp),
    child: Image.asset(
      "assets/images/icon_calender.png",
    ),
  ),
);

final textFieldDecoration = InputDecoration(

    constraints: BoxConstraints(minHeight: 90.h),
    border: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorGroup.gray)));

final inputDecorationTheme = InputDecorationTheme(
    constraints: BoxConstraints(maxHeight: 90.h),
    enabledBorder: textFieldDecoration.border,
    border: textFieldDecoration.border // enabledBorder: ,
    );
