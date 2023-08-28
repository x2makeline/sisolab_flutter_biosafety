import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/bindings/fcl_new_detail_binding.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/bindings/fcl_regular_detail_binding.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/fcl_detail_page.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_list/bindings/fcl_new_list_binding.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_list/bindings/fcl_regular_list_binding.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_list/fcl_list_page.dart';
import 'package:sisolab_flutter_biosafety/app/ui/home/home_page.dart';

import 'package:sisolab_flutter_biosafety/app/ui/select_type/select_type_page.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';


List<GetPage> routes = [
  AppRoutes.home,
  AppRoutes.fclNewDetailSelect,
  AppRoutes.fclNewDetailForm,
  AppRoutes.fclNewLIst,
  AppRoutes.fclRegularDetailSelect,
  AppRoutes.fclRegularDetailForm,
  AppRoutes.fclRegularList,
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
      title:
          "${Constant.regularTitle} ${Constant.fclTitle} ${Constant.detailTitle}");
  static GetPage fclRegularDetailSelect = GetPage(
      name: "/fcl/regular/detail/:idx",
      page: () => const FclDetailPage(),
      binding: FclRegularDetailBinding(),
      title:
          "${Constant.regularTitle} ${Constant.fclTitle} ${Constant.detailTitle}");
  static GetPage fclRegularList = GetPage(
      name: "/fcl/regular/list",
      page: () => const FclListPage(),
      bindings: [FclRegularListBinding()],
      title:
          "${Constant.regularTitle} ${Constant.fclTitle} ${Constant.listTitle}");
  static GetPage fclNewDetailForm = GetPage(
      name: "/fcl/new/detail",
      page: () => const FclDetailPage(),
      binding: FclNewDetailBinding(),
      title:
          "${Constant.newTitle} ${Constant.fclTitle} ${Constant.detailTitle}");
  static GetPage fclNewDetailSelect = GetPage(
      name: "/fcl/new/detail/:idx",
      page: () => const FclDetailPage(),
      binding: FclNewDetailBinding(),
      title:
          "${Constant.newTitle} ${Constant.fclTitle} ${Constant.detailTitle}");
  static GetPage fclNewLIst = GetPage(
      name: "/fcl/new/list",
      page: () => const FclListPage(),
      binding: FclNewListBinding(),
      title: "${Constant.newTitle} ${Constant.fclTitle} ${Constant.listTitle}");
}
