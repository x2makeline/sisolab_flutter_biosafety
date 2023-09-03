import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_list/vms/fcl_list_page_vm.dart';

class FclListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FclListPageVm());
  }
}