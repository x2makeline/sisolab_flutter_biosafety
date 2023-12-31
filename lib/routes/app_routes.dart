import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_list/fcl_list_page.dart';
import 'package:sisolab_flutter_biosafety/app/ui/login/login_page.dart';
import 'package:sisolab_flutter_biosafety/app/ui/select_type/select_type_page.dart';

List<GetPage> routes = [
  AppRoutes.nonLogin,
  AppRoutes.fclList,
  AppRoutes.selectType,
];

abstract class AppRoutes {
  static GetPage nonLogin =
      GetPage(name: "/", page: () => const NonLoginPage());
  static GetPage selectType =
      GetPage(name: "/selectType", page: () => const SelectTypePage());

  static GetPage fclList = GetPage(
    name: "/list",
    page: () => FclListPage(),
    // binding: FclListBinding(),
  );
}
