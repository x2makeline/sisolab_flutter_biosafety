import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_big_category.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';


class FclRegularDetailVm extends FclDetailVm {
  static FclRegularDetailVm get to => Get.find(); // add this line

  @override
  int get maxTabindex => regularTabList.length - 1;

  @override
  FclBigCategory get bigCategory => FclBigCategory.REGULAR;
}
