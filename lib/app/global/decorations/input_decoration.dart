import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';

final dateInputDecoration = InputDecoration(
  hintText: "YYYY.MM.DD",
  suffixIconConstraints: BoxConstraints(minHeight: 42.sp, minWidth: 42.sp),
  suffixIcon: Padding(
    padding: EdgeInsets.all(20.sp),
    child: Image.asset(
      "assets/images/icon_calender.png",
      height: 42.sp,
      width: 42.sp,
    ),
  ),
);

const textFieldDecoration = InputDecoration(
    // constraints: BoxConstraints(minHeight: 90.h),
    disabledBorder:
        OutlineInputBorder(borderSide: BorderSide(color: ColorGroup.gray)),
    border: OutlineInputBorder(borderSide: BorderSide(color: ColorGroup.gray)));

final inputDecorationTheme = InputDecorationTheme(
    // constraints: BoxConstraints(minHeight: 90.h),
    enabledBorder: textFieldDecoration.border,
    disabledBorder: textFieldDecoration.border,
    border: textFieldDecoration.border // enabledBorder: ,
    );
