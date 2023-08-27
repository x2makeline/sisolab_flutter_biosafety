import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_big_category.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

import '../../../global/models/fcl_detail_controller.dart';

class FclRegularDetailVm extends FclDetailController {
  static FclRegularDetailVm get to => Get.find(); // add this line

  @override
  int get maxTabindex => newTabList.length - 1;

  @override
  FclBigCategory get bigCategory => FclBigCategory.REGULAR;
}
