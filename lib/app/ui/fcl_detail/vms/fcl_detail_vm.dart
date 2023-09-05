import 'dart:math';

import 'package:dartlin/control_flow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/gbn.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/proc_pre_field_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_field_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/providers/api_provider.dart';
import 'package:sisolab_flutter_biosafety/app/data/repositories/select_proc_field_repository.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_detail_form_state.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_tab.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';
import 'package:sisolab_flutter_biosafety/core/extensions/dateformat.dart';
import 'package:sisolab_flutter_biosafety/core/utils/convert.util.dart';
import 'package:sisolab_flutter_biosafety/core/utils/mc_logger.dart';

class FclDetailVm extends GetxController with PLoggerMixin {
  static FclDetailVm get to => Get.find();

  final _repository = SelectProcFieldRepository();
  final _apiPro = ApiProvider();
  final _pastYearYn = RxBool(false);
  final ScrollController scrollController = ScrollController();
  final _io = Rx<BioIo>(BioIo());
  final _preData = Rxn<BioIo>();

  bool get pastYearYn => _pastYearYn.value;

  BioIo? get preData => _preData.value;

  set pastYearYn(bool v) {
    if (!v) {
      _pastYearYn.value = v;
    } else {
      if (io.company == null ||
          io.d184 == null ||
          io.company!.isEmpty ||
          io.d184!.isEmpty) {
        Get.snackbar("메세지", "운영기관명과 설치 ∙ 운영 장소를 입력 후 저장해주세요.");
      } else {
        _pastYearYn.value = v;
      }
    }
  }

  /// 활성화 탭 index
  final _tabIndex = 0.obs;

  int get tabIndex => _tabIndex.value;

  set tabIndex(int index) => _tabIndex.value = index;

  List<FclTab> get tabList => when(gbn, {
        Gbn.fd1: () => regularTabList,
        Gbn.fd2: () => newTabList,
        Gbn.fd3: () => riskTabList
      })!;

  int get maxTabindex => tabList.length - 1;

  final Gbn gbn =
      Gbn.values.firstWhere((element) => element.name == Get.parameters["id"]);

  /// 문서번호
  final String? idx = Get.parameters['idx'];

  final _isLoading = true.obs;

  bool get isLoading => _isLoading.value;

  /// form state
  late final FclDetailFormState formState;

  BioIo get io => _io.value;

  set io(BioIo io) => _io.value = io;
  final formKey = GlobalKey<FormBuilderState>(debugLabel: 'FclDetailVm');

  prevTab() {
    _tabIndex.value = max(0, tabIndex - 1);
  }

  nextTab() {
    _tabIndex.value = min(maxTabindex, tabIndex + 1);
  }

  _init() {
    _repository
        .selectProcField(
            SelectProcFieldIn(gbn: gbn, idx: int.parse(Get.parameters['idx']!)))
        .then((value) {
      _io.value = value.data!;
      pLog.i(_io.value);

      _isLoading.value = false;
    });
  }

  void submit() {
    if (formKey.currentState != null) {
      formKey.currentState!.save();
      final bioJson = {
        ...io.toJson(),
        ...BioIo.fromJson(formKey.currentState!.value.map((key, value) {
          if (value == null) {
            return MapEntry(key, value);
          } else {
            switch (value.runtimeType) {
              case DateTime:
                return MapEntry(key, (value as DateTime).format1);
              case bool:
                return MapEntry(key, boolToYn((value as bool)));
            }
          }
          return MapEntry(key, value);
        })).toJson()
          ..removeWhere((key, value) => value == null)
      };
      final bio = BioIo.fromJson(bioJson);

      pLog.d("submit $bioJson");

      _apiPro.procFieldSave(bio).then((value) {
        if (value.isSuccess) {
          Get.snackbar("메세지", "저장되었습니다.");
          _init();
        }
      });
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
    ever(_pastYearYn, (v) {
      if (v && _preData.value == null) {
        _repository
            .procPreField(ProcPreFieldIn(
                company: io.company!, d184: io.d184!, gbn: gbn, idx: io.idx!))
            .then((value) {
          _preData.value = value.data;
        });
      }
    });

    formState =
        idx != null ? FclDetailFormState.update : FclDetailFormState.insert;
  }
}