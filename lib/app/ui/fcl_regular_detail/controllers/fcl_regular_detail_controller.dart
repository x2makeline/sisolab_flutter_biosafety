import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_big_category.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

import '../../../global/models/fcl_detail_controller.dart';

class FclRegularDetailController extends FclDetailController {
  static FclRegularDetailController get to => Get.find(); // add this line
  FclRegularDetailController()
      : super(
            bigCategory: FclBigCategory.REGULAR,
            );

}
