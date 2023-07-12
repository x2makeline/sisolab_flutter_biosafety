import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/modules/fcl_new_detail/controllers/fcl_new_detail_controller.dart';

class FclNewDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FclNewDetailController());
  }


}
