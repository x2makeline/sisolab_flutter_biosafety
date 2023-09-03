import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_list/vms/fcl_new_list_page_vm.dart';

class FclNewListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FclNewListPageVm());
  }
}