import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'app/global/bindings/global_binding.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

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
        enableLog: true,
        initialRoute: AppRoutes.home.name,
        theme: ThemeData(
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
              toolbarHeight: 100,
              actionsIconTheme: IconThemeData(size: 40, color: Colors.black),
              shape: Border(
                  bottom: BorderSide(
                      color: Color.fromRGBO(204, 204, 204, 1), width: 1)),
            )),
        initialBinding: GlobalBinding(),
        getPages: routes);
  }
}
