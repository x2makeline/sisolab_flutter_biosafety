import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_new_detail/controllers/fcl_new_detail_controller.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_regular_detail/controllers/fcl_regular_detail_controller.dart';

import 'fcl_big_category.dart';
import 'fcl_detail_form_state.dart';

abstract class FclDetailController extends GetxController {
  static FclDetailController get to => Get.isRegistered<FclNewDetailController>()
      ? Get.find<FclNewDetailController>()
      : Get.find<FclRegularDetailController>();

  /// 문서번호
  final String? docNo = Get.parameters['docNo'];

  /// form state
  late final FclDetailFormState formState;

  FclBigCategory bigCategory;


  FclDetailController({required this.bigCategory});

  final formKey = GlobalKey<FormBuilderState>(debugLabel: 'FclDetailController');

  @override
  void onInit() {
    super.onInit();

    formState =
        docNo != null ? FclDetailFormState.update : FclDetailFormState.insert;
  }
}

class Test {

}