import 'dart:math';

import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_big_category.dart';

import '../../../global/models/fcl_detail_controller.dart';




class FclNewDetailController extends FclDetailController
    with CheckerMixin, TabMixin {
  static FclNewDetailController get to => Get.find(); // add this line
  FclNewDetailController() : super(bigCategory: FclBigCategory.novel);
}

mixin TabMixin {
  /// 활성화 탭 index
  final _tabIndex = 0.obs;

  int get tabIndex => _tabIndex.value;

  set tabIndex(int index) => _tabIndex.value = index;

  backTabIndex() {
    // _tabIndex.value = min(0, index);
  }
}

mixin CheckerMixin {
  /// 점검자 count
  final _checkerCount = 1.obs;

  int get checkerCount => _checkerCount.value;

  set checkerCount(int count) => _checkerCount.value = count;

  addChecker() {
    _checkerCount.value++;
  }
}
