import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_big_category.dart';

import '../../../global/models/fcl_detail_controller.dart';

class FclNewDetailController extends FclDetailController
{
  static FclNewDetailController get to => Get.find(); // add this line
  FclNewDetailController(
      ) : super(bigCategory: FclBigCategory.NEW);


  @override
  final maxTabindex = 8;

}

