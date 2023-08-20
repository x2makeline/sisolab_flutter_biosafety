import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_new_detail/controllers/fcl_new_detail_controller.dart';

class FclNewDetailBinding extends Bindings {
  @override
  void dependencies() {
    print(Get.parameters);


    Get.lazyReplace(() => FclNewDetailController());


    ;
  }
}
