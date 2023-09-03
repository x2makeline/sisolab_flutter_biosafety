import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_list/vms/fcl_regular_list_page_vm.dart';

class FclRegularListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FclRegularListPageVm());
  }
}