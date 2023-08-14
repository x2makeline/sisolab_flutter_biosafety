import 'package:flutter/material.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/text_styles.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/double.dart';

final buttonMainTheme = ButtonThemeData(
  height: 90.sz,
  minWidth: 184.sz,
  textTheme: ButtonTextTheme.primary,
  padding: EdgeInsets.all(30.sz),
);

final elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ButtonStyle(
    textStyle: MaterialStatePropertyAll<TextStyle>(buttonTextStyle),
      padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(buttonMainTheme.padding),
      foregroundColor: const MaterialStatePropertyAll<Color>(Colors.white),
      backgroundColor: const MaterialStatePropertyAll<Color>(ColorGroup.green),
      elevation: const MaterialStatePropertyAll<double>(0),
      side: const MaterialStatePropertyAll<BorderSide>(
          BorderSide(color: Color(0xffe0e0e0))))
);

final outlinedButtonThemeData = OutlinedButtonThemeData(

  style: ButtonStyle(
      textStyle: MaterialStatePropertyAll<TextStyle>(buttonTextStyle),
      padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(buttonMainTheme.padding),
      foregroundColor: const MaterialStatePropertyAll<Color>(Colors.black),
      elevation: const MaterialStatePropertyAll<double>(0),
      backgroundColor: const MaterialStatePropertyAll<Color>(Colors.white),
      side: const MaterialStatePropertyAll<BorderSide>(
          BorderSide(color: Color(0xffe0e0e0))))
);

final primaryButtonStyle = ButtonStyle(
    padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(buttonMainTheme.padding),
    foregroundColor: const MaterialStatePropertyAll<Color>(Colors.white),
    backgroundColor: const MaterialStatePropertyAll<Color>(ColorGroup.green),
    elevation: const MaterialStatePropertyAll<double>(0),
    side: const MaterialStatePropertyAll<BorderSide>(
        BorderSide(color: Color(0xffe0e0e0))));

final whiteButtonStyle = ButtonStyle(
    padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(buttonMainTheme.padding),
    foregroundColor: const MaterialStatePropertyAll<Color>(Colors.black),
    elevation: const MaterialStatePropertyAll<double>(0),
    backgroundColor: const MaterialStatePropertyAll<Color>(Colors.white),
    side: const MaterialStatePropertyAll<BorderSide>(
        BorderSide(color: Color(0xffe0e0e0))));

final blackButtonStyle = ButtonStyle(
    padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(buttonMainTheme.padding),
    foregroundColor: const MaterialStatePropertyAll<Color>(Colors.white),
    elevation: const MaterialStatePropertyAll<double>(0),
    backgroundColor: const MaterialStatePropertyAll<Color>(Colors.black),
    side: const MaterialStatePropertyAll<BorderSide>(
        BorderSide(color: Color(0xffe0e0e0))));
