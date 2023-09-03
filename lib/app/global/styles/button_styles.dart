import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/text_styles.dart';

final buttonMainTheme = ButtonThemeData(
  textTheme: ButtonTextTheme.primary,
  padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
);

final elevatedButtonThemeData = ElevatedButtonThemeData(
    style: ButtonStyle(

        // fixedSize: MaterialStatePropertyAll<Size>(Size(double.infinity, 90.h)),
        minimumSize: MaterialStatePropertyAll<Size>(Size(184.w, 90.h)),
        textStyle: MaterialStatePropertyAll<TextStyle>(buttonTextStyle),
        padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(
            buttonMainTheme.padding),
        foregroundColor: const MaterialStatePropertyAll<Color>(Colors.white),
        backgroundColor:
            const MaterialStatePropertyAll<Color>(ColorGroup.green),
        elevation: const MaterialStatePropertyAll<double>(0),
        side: const MaterialStatePropertyAll<BorderSide>(
            BorderSide(color: ColorGroup.gray))));

final outlinedButtonThemeData = OutlinedButtonThemeData(
    style: ButtonStyle(

        // fixedSize: MaterialStatePropertyAll<Size>(Size(double.infinity, 90.h)),
        minimumSize: MaterialStatePropertyAll<Size>(Size(184.w, 90.h)),
        textStyle: MaterialStatePropertyAll<TextStyle>(buttonTextStyle),
        padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(
            buttonMainTheme.padding),
        foregroundColor: const MaterialStatePropertyAll<Color>(Colors.black),
        elevation: const MaterialStatePropertyAll<double>(0),
        backgroundColor: const MaterialStatePropertyAll<Color>(Colors.white),
        side: const MaterialStatePropertyAll<BorderSide>(
            BorderSide(color: ColorGroup.gray))));
