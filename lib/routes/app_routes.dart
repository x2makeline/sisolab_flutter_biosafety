import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/modules/home/home_page.dart';

List<GetPage> routes = [AppRoutes.home];

abstract class AppRoutes {
  static GetPage home = GetPage(name: "/", page: () => const HomePage());
}
