import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/vms/network_vm.dart';
import 'package:sisolab_flutter_biosafety/app/global/vms/token_vm.dart';

class GlobalBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    Get.put(NetworkVm());

    Get.put(TokenVm());

  }
}
