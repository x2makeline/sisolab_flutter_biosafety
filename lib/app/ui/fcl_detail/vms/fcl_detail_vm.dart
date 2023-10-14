import 'dart:math';

import 'package:dartlin/control_flow.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/gbn.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/proc_pre_field_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/repositories/select_proc_field_repository.dart';
import 'package:sisolab_flutter_biosafety/app/global/errors/api_error.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_detail_form_state.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_tab.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_list/vms/fcl_list_page_vm.dart';
import 'package:sisolab_flutter_biosafety/app/ui/login/login_page.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';
import 'package:sisolab_flutter_biosafety/core/extensions/dateformat.dart';
import 'package:sisolab_flutter_biosafety/core/providers/api_provider.dart';
import 'package:sisolab_flutter_biosafety/core/providers/hive_provider.dart';
import 'package:sisolab_flutter_biosafety/core/utils/convert.util.dart';
import 'package:sisolab_flutter_biosafety/core/utils/functions.dart';
import 'package:sisolab_flutter_biosafety/core/utils/mc_logger.dart';
import 'package:sisolab_flutter_biosafety/routes/app_routes.dart';

class FclDetailVm extends GetxController with PLoggerMixin {
  static FclDetailVm get to => Get.find();

  final _repository = SelectProcFieldRepository();
  final _apiPro = ApiProvider();
  final _pastYearYn = RxBool(false);
  final ScrollController scrollController = ScrollController();
  final _io = Rx<BioIo>(BioIo())
    ..listen((p0) {
      print(p0);
    });
  final _preData = Rxn<BioIo>();

  bool get pastYearYn => _pastYearYn.value;

  BioIo? get preData => _preData.value;

  @override
  void onClose() {
    print("onClose");
  }

  Future<void> setPastYearYn(bool v) async {
    if (v) {
      /// 네트워크 연결 상태
      if (await isConnect()) {
        if (io.company == null ||
            io.d184 == null ||
            io.company!.isEmpty ||
            io.d184!.isEmpty) {
          Get.snackbar("메세지", "운영기관명과 설치 ∙ 운영 장소를 입력 후 저장해주세요.");
        } else {
          _pastYearYn.value = v;
        }
      } else {
        showOfflineSb();
      }
    } else {
      _pastYearYn.value = v;
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

  late final Gbn gbn = Get.arguments['gbn'];

  /// 로컬 id
  late final String? localId = Get.arguments['localId'];

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

  _init(String localId) {
    _io.value = HiveProvider.select(localId) ?? BioIo();
  }

  Future<void> submitServer([BioIo? io]) async {
    if (await isConnect()) {
      final bio = submit();
      bio.idx = io?.idx ?? bio.idx;

      try {
        await _apiPro.procFieldSave(bio).then((value) async {
          if (value.isSuccess) {
            if (bio.localId != null) {
              await HiveProvider.delete(bio.localId!);
            }
            await FclListPageVm.to.submit();

            Get.back();
            Get.until((route) => Get.currentRoute == AppRoutes.fclList.name);
            Get.snackbar("메세지", "저장되었습니다.");
            // if(Get.context != null) {
            //   Navigator.pop(Get.context!);
            // }
          }
        });
      } on DioException catch (e) {
        if (e.error is ApiError &&
            [ApiErrorType.nonToken, ApiErrorType.expiredToken]
                .contains((e.error as ApiError).type)) {
          Get.bottomSheet(SafeArea(
            child: LoginPage(
              onSuccess: (token) async {
                await submitServer(bio);
              },
            ),
          ), isScrollControlled: true);
        }
        rethrow;
      } catch (e) {
        pLog.e(e);
        rethrow;
      }
    } else {
      showOfflineSb();
    }
  }

  Future<void> submitLocal() async {
    final io = submit();
    io.localRegDateTime = io.localRegDateTime ?? DateTime.now().format2;
    io.localUpdDateTime = DateTime.now().format2;
    if (io.localId != null) {
      await HiveProvider.update(io.localId!, io);
    } else {
      await HiveProvider.insert(io);
    }

    await FclListPageVm.to.submit();
    Get.back();
  }

  BioIo submit() {
    formKey.currentState!.save();
    final bioJson = {
      "gbn": gbn.name,
      ...io.toJson()..removeWhere((key, value) => value == null),
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
      }).let((it) {
        it["d75"] =
            (it["d75_1"] == "Y" ? "1" : "") + (it["d75_2"] == "Y" ? "2" : "");

        return it;
      })).toJson()
        ..removeWhere((key, value) => value == null)
    };

    print('bioJson["d75_1"]');
    print(bioJson["d75_1"]);
    print('bioJson["d75_2"]');
    print(bioJson["d75_2"]);

    return BioIo.fromJson(bioJson);
  }

  @override
  void onInit() {
    super.onInit();
    if (localId != null) {
      _init(localId!);
    }
    ever(_pastYearYn, (v) {
      if (v && _preData.value == null) {
        _repository
            .procPreField(
                ProcPreFieldIn(company: io.company!, d184: io.d184!, gbn: gbn))
            .then((value) {
          _preData.value = value.data;
        });
      }
    });

    formState =
        localId != null ? FclDetailFormState.update : FclDetailFormState.insert;
  }
}
