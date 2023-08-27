import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_new_detail/vms/fcl_new_detail_vm.dart';

class FclRegularDetailBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyReplace(() => FclNewDetailController());
  }
}
