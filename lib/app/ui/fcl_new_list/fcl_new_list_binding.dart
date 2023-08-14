import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_new_list/fcl_new_list_page_controller.dart';

class FclNewListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FclNewListPageController());
  }
}