import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sisolab_flutter_biosafety/app/global/decorations/input_decoration.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/button_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/empty_box.dart';
import 'package:sisolab_flutter_biosafety/core/providers/pref.dart';
import 'package:sisolab_flutter_biosafety/core/providers/sqflite_provider.dart';

import 'app/global/bindings/global_binding.dart';
import 'routes/app_routes.dart';

void main() async {
  Intl.defaultLocale = 'ko-KP';
  WidgetsFlutterBinding.ensureInitialized();
  FormBuilderLocalizations.setCurrentInstance(FormBuilderLocalizationsImplKo());

  await SPref.init();
  await SqfliteProvider.init();

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
            initialRoute: AppRoutes.nonLogin.name,
            // initialRoute: AppRoutes.selectType.name,
            // initialRoute: "/fcl/fd1/list",
        // initialRoute: "/fcl/fd3/list",
            // initialRoute: AppRoutes.fclRegularList.name,
            // initialRoute: "/fcl/fd1/detail/613",
        // initialRoute: "/fcl/fd3/detail",
            // initialRoute: "/fcl/fd2/detail/609",
            // initialRoute: "/fcl/fd2/detail",
            // initialRoute: "/fcl/fd3/detail",
            // initialRoute: "/fcl/fd3/detail/593",

            builder: (_, w) => MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: w ?? const EmptyBox(),
            ),
            theme: ThemeData(
                buttonTheme: buttonMainTheme,
                elevatedButtonTheme: elevatedButtonThemeData,
                outlinedButtonTheme: outlinedButtonThemeData,
                fontFamily: "NotoSansCJKkr",
                primarySwatch: Colors.red,
                textTheme: TextTheme(
                    titleLarge: TextStyle(
                        fontSize: 28.sp,
                        color: ColorGroup.black,
                        fontWeight: FontWeight.w500),

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
