import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/bindings/fcl_new_detail_binding.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/bindings/fcl_regular_detail_binding.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/fcl_detail_page.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_list/bindings/fcl_list_binding.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_list/fcl_list_page.dart';
import 'package:sisolab_flutter_biosafety/app/ui/home/home_page.dart';
import 'package:sisolab_flutter_biosafety/app/ui/select_type/select_type_page.dart';

List<GetPage> routes = [
  AppRoutes.home,
  AppRoutes.fclNewDetailSelect,
  AppRoutes.fclNewDetailForm,
  AppRoutes.fclList,
  AppRoutes.fclRegularDetailSelect,
  AppRoutes.fclRegularDetailForm,
  AppRoutes.selectType
];

abstract class AppRoutes {
  static GetPage home = GetPage(name: "/", page: () => HomePage());
  static GetPage selectType =
      GetPage(name: "/selectType", page: () => const SelectTypePage());
  static GetPage fclRegularDetailForm = GetPage(
    name: "/fcl/regular/detail",
    page: () => const FclDetailPage(),
    binding: FclRegularDetailBinding(),
  );
  static GetPage fclRegularDetailSelect = GetPage(
    name: "/fcl/regular/detail/:idx",
    page: () => const FclDetailPage(),
    binding: FclRegularDetailBinding(),
  );
  static GetPage fclList = GetPage(
    name: "/fcl/:id/list",
    page: () => const FclListPage(),
    binding: FclListBinding(),
  );
  static GetPage fclNewDetailForm = GetPage(
    name: "/fcl/new/detail",
    page: () => const FclDetailPage(),
    binding: FclNewDetailBinding(),
  );
  static GetPage fclNewDetailSelect = GetPage(
    name: "/fcl/new/detail/:idx",
    page: () => const FclDetailPage(),
    binding: FclNewDetailBinding(),
  );
}
