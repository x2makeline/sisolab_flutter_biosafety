import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/global/bindings/global_binding.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        enableLog: true,
        // initialRoute: AppRoutes.live.name,
        initialRoute: AppRoutes.home.name,

        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: Colors.white,
            toolbarHeight: 100,
            actionsIconTheme: IconThemeData(
              size: 40,
              color: Colors.black
            ),
            shape: Border(
                bottom: BorderSide(
                    color: Color.fromRGBO(204, 204, 204, 1),
                    width: 1
                )
            ),
          )
        ),
        initialBinding: GlobalBinding(),
        getPages: routes);
  }
}

