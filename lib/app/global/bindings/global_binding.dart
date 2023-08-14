import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/vms/network_vm.dart';
import 'package:sisolab_flutter_biosafety/app/global/vms/token_vm.dart';

class GlobalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NetworkVm());
    Get.lazyPut(() => TokenVm());
  }
}