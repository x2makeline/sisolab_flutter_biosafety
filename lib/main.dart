import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/button_styles.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/double.dart';

import 'app/global/bindings/global_binding.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

const defaultTextStyle = TextStyle(
  color: Color(0xff101010),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: const [
        ...GlobalMaterialLocalizations.delegates,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ko'),
      ],
      locale: const Locale('ko'),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.fclNewLIst.name,
      theme: ThemeData(
          buttonTheme: buttonMainTheme,
          fontFamily: "NotoSansCJKkr",
          primarySwatch: Colors.red,
          primaryColor: const Color(0xff188657),
          textTheme: TextTheme(
              bodyMedium: defaultTextStyle.copyWith(fontSize: 28.sz),
              headlineLarge: defaultTextStyle.copyWith(
                  fontSize: 62.sz, fontWeight: FontWeight.w500),
              headlineMedium: defaultTextStyle.copyWith(
                fontSize: 46.sz,
                fontWeight: FontWeight.w500,
              ),
              headlineSmall: defaultTextStyle.copyWith(
                  fontSize: 34.sz, fontWeight: FontWeight.w500),
              titleLarge: defaultTextStyle.copyWith(
                  fontSize: 34.sz, fontWeight: FontWeight.normal),
              bodyLarge: defaultTextStyle.copyWith(
                  fontSize: 28.sz, fontWeight: FontWeight.w500)),
          inputDecorationTheme: const InputDecorationTheme(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(3)),
                borderSide: BorderSide(color: Color(0xffcccccc), width: 1),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(3)),
                borderSide: BorderSide(color: Color(0xffcccccc), width: 1),
              )
              // enabledBorder: ,
              ),
          dividerTheme: const DividerThemeData(
            color: Colors.black,
          ),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: Colors.white,
            actionsIconTheme: IconThemeData(size: 40, color: Colors.black),
            shape: Border(bottom: BorderSide(width: 1)),
          )),
      initialBinding: GlobalBinding(),
      getPages: routes,
    );
  }
}
