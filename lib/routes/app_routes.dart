import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/bindings/fcl_detail_binding.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/fcl_detail_page.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_list/bindings/fcl_list_binding.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_list/fcl_list_page.dart';
import 'package:sisolab_flutter_biosafety/app/ui/home/home_page.dart';
import 'package:sisolab_flutter_biosafety/app/ui/select_type/select_type_page.dart';

List<GetPage> routes = [
  AppRoutes.home,
  AppRoutes.fclList,
  AppRoutes.selectType,
  AppRoutes.fclDetailForm,
  AppRoutes.fclDetailSelect,
];

abstract class AppRoutes {
  static GetPage home = GetPage(name: "/", page: () => HomePage());
  static GetPage selectType =
      GetPage(name: "/selectType", page: () => const SelectTypePage());

  static GetPage fclList = GetPage(
    name: "/fcl/:id/list",
    page: () => const FclListPage(),
    binding: FclListBinding(),
  );
  static GetPage fclDetailForm = GetPage(
    name: "/fcl/:id/detail",
    page: () => const FclDetailPage(),
    binding: FclDetailBinding(),
  );
  static GetPage fclDetailSelect = GetPage(
    name: "/fcl/:id/detail/:idx",
    page: () => const FclDetailPage(),
    binding: FclDetailBinding(),
  );
}
