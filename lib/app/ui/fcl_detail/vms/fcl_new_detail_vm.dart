import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_big_category.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';


class FclNewDetailVm extends FclDetailVm {
  static FclNewDetailVm get to => Get.find<FclNewDetailVm>(); // add this line

  @override
  int get maxTabindex => newTabList.length - 1;

  @override
  FclBigCategory get bigCategory => FclBigCategory.NEW;
}
