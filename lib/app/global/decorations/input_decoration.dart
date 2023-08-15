import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final dateInputDecoration = InputDecoration(
  hintText: "YYYY.MM.DD",
  suffixIconConstraints: BoxConstraints(minHeight: 42.h, maxHeight: 42.h),
  suffixIcon: Padding(
    padding: EdgeInsets.symmetric(horizontal: 24.w),
    child: Image.asset(
      "assets/images/icon_calender.png",
    ),
  ),
);
