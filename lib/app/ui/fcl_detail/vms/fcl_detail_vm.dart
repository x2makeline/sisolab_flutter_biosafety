import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/gbn.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_field_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/providers/api_provider.dart';
import 'package:sisolab_flutter_biosafety/app/data/repositories/select_proc_field_repository.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_big_category.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_detail_form_state.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_new_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_regular_detail_vm.dart';


abstract class FclDetailVm extends GetxController {
  static FclDetailVm get to => Get.isRegistered<FclRegularDetailVm>()
      ? FclRegularDetailVm.to
      : FclNewDetailVm.to;

  final _repository = SelectProcFieldRepository();
  final _apiPro = ApiProvider();
  final _pastYearYn = RxBool(false);
  final ScrollController scrollController = ScrollController();

  bool get pastYearYn => _pastYearYn.value;

  set pastYearYn(bool v) => _pastYearYn.value = v;

  /// 활성화 탭 index
  final _tabIndex = 8.obs;

  int get tabIndex => _tabIndex.value;

  set tabIndex(int index) => _tabIndex.value = index;

  int get maxTabindex {
    throw Error();
  }

  FclBigCategory get bigCategory {
    throw Error();
  }

  final _io = Rx<BioIo>(BioIo());

  /// 문서번호
  final String? idx = Get.parameters['idx'];

  final _isLoading = true.obs;

  bool get isLoading => _isLoading.value;

  /// form state
  late final FclDetailFormState formState;

  BioIo get io => _io.value;
  final formKey = GlobalKey<FormBuilderState>(debugLabel: 'FclDetailVm');

  prevTab() {
    _tabIndex.value = max(0, tabIndex - 1);
  }

  nextTab() {
    _tabIndex.value = min(maxTabindex, tabIndex + 1);
  }

  _init() {
    _repository
        .selectProcField(SelectProcFieldIn(
            gbn: bigCategory.gbn, idx: int.parse(Get.parameters['idx']!)))
        .then((value) {
      _io.value = value.data!.bioIo;
      _isLoading.value = false;
    });
  }

  submit() {
    if (formKey.currentState != null) {
      formKey.currentState!.save();
      final bio =
          BioIo.fromForm({...formKey.currentState!.value, "docno": io.docno});

      _apiPro.procFieldSave(bio).then((value) => print(value));
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
    ever(_tabIndex, (_) => scrollController.jumpTo(0));

    formState =
        idx != null ? FclDetailFormState.update : FclDetailFormState.insert;
  }
}
