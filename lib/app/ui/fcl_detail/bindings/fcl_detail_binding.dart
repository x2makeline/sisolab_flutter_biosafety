import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';

class FclDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FclDetailVm());
  }
}
