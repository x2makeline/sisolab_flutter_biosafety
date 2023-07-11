import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

import '../app/modules/fcl_new_detail/fcl_new_detail_page.dart';
import '../app/modules/fcl_new_list/fcl_new_list_page.dart';
import '../app/modules/fcl_regular_detail/fcl_regular_detail_page.dart';
import '../app/modules/fcl_regular_list/fcl_regular_list_page.dart';
import '../app/modules/home/home_page.dart';

List<GetPage> routes = [
  AppRoutes.home,
  AppRoutes.fclNewDetail,
  AppRoutes.fclNewLIst,
  AppRoutes.fclRegularDetail,
  AppRoutes.fclRegularList
];

abstract class AppRoutes {
  static GetPage home =
      GetPage(name: "/", page: () => const HomePage(), title: "홈");
  static GetPage fclRegularDetail = GetPage(
      name: "/fcl/regular/detail",
      page: () => const FclRegularDetailPage(),
      title:
          "${Constant.regularTitle} ${Constant.fclTitle} ${Constant.detailTitle}");
  static GetPage fclRegularList = GetPage(
      name: "/fcl/regular/list",
      page: () => const FclRegularListPage(),
      title:
          "${Constant.regularTitle} ${Constant.fclTitle} ${Constant.listTitle}");
  static GetPage fclNewDetail = GetPage(
      name: "/fcl/new/detail",
      page: () => const FclNewDetailPage(),
      title:
          "${Constant.newTitle} ${Constant.fclTitle} ${Constant.detailTitle}");
  static GetPage fclNewLIst = GetPage(
      name: "/fcl/new/list",
      page: () => const FclNewListPage(),
      title: "${Constant.newTitle} ${Constant.fclTitle} ${Constant.listTitle}");
}
