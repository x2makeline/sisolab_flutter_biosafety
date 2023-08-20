import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/gbn.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_field_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/repositories/select_proc_field_repository.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_new_detail/controllers/fcl_new_detail_controller.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_regular_detail/controllers/fcl_regular_detail_controller.dart';

import 'fcl_big_category.dart';
import 'fcl_detail_form_state.dart';

abstract class FclDetailController extends GetxController {
  final _repository = SelectProcFieldRepository();

  /// 활성화 탭 index
  final _tabIndex = 0.obs..listen((p0) {
    print(p0);
  });

  int get tabIndex => _tabIndex.value;

  set tabIndex(int index) => _tabIndex.value = index;

  static FclDetailController get to =>
      Get.isRegistered<FclNewDetailController>()
          ? Get.find<FclNewDetailController>()
          : Get.find<FclRegularDetailController>();

  final _io = Rx<BioIo>(BioIo());

  /// 문서번호
  final String? idx = Get.parameters['idx'];

  final _isLoading = true.obs;

  bool get isLoading => _isLoading.value;

  /// form state
  late final FclDetailFormState formState;

  FclBigCategory bigCategory;

  FclDetailController({required this.bigCategory});

  BioIo get io => _io.value;
  final formKey =
      GlobalKey<FormBuilderState>(debugLabel: 'FclDetailController');

  _init() {
    _repository
        .selectProcField(SelectProcFieldIn(
            gbn: Gbn.fd2, idx: int.parse(Get.parameters['idx']!)))
        .then((value) {
      _io.value = value.data!.bioIo;
      _isLoading.value = false;
    });
  }

  submit() {
    if(formKey.currentState != null) {

      formKey.currentState!.save();


      print(formKey.currentState!.value);
      print(BioIo.fromJson(formKey.currentState!.value));
      print(BioIo.fromJson(formKey.currentState!.value).toJson());
    }

  }

  @override
  void onInit() {
    super.onInit();

    if (idx != null) {
      _init();
    } else {
      _isLoading.value = false;
    }

    formState =
        idx != null ? FclDetailFormState.update : FclDetailFormState.insert;
  }
}

class Test {}
