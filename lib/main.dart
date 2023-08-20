import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sisolab_flutter_biosafety/app/global/decorations/input_decoration.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/button_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';

import 'app/global/bindings/global_binding.dart';
import 'routes/app_routes.dart';

void main() {
  Intl.defaultLocale = 'ko-KP';
  WidgetsFlutterBinding.ensureInitialized();
  FormBuilderLocalizations.setCurrentInstance(FormBuilderLocalizationsImplKo());

  runApp(const MyApp());
}

const defaultTextStyle = TextStyle(
  color: Color(0xff101010),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
      designSize: const Size(1563, 2048),
      // minTextAdapt: true,
      builder: (_, __) => GetMaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              ...GlobalMaterialLocalizations.delegates,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('ko'),
            ],
            locale: const Locale('ko'),
            // initialRoute: AppRoutes.home.name,
            initialRoute: "/fcl/new/detail/479",
            theme: ThemeData(
                buttonTheme: buttonMainTheme,
                elevatedButtonTheme: elevatedButtonThemeData,
                outlinedButtonTheme: outlinedButtonThemeData,
                fontFamily: "NotoSansCJKkr",
                primarySwatch: Colors.red,
                textTheme: TextTheme(

                    /// text field
                    titleMedium:
                        TextStyle(fontSize: 28.sp, color: ColorGroup.black)),
                inputDecorationTheme: inputDecorationTheme,
                dividerTheme: const DividerThemeData(
                  color: Colors.black,
                ),
                appBarTheme: const AppBarTheme(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  actionsIconTheme:
                      IconThemeData(size: 40, color: Colors.black),
                  shape: Border(
                      bottom: BorderSide(width: 1, color: ColorGroup.gray)),
                )),
            initialBinding: GlobalBinding(),
            getPages: routes,
          ));
}
