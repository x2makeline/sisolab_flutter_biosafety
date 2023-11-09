import 'dart:io';
import 'dart:math';

import 'package:dartlin/control_flow.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io_file.dart';
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
import 'package:velocity_x/velocity_x.dart';

class FclDetailVm extends GetxController with PLoggerMixin {
  /// Static -------------------------------------------------------------------
  static FclDetailVm get to => Get.find();

  /// Private Variable ---------------------------------------------------------
  final _repository = SelectProcFieldRepository();
  final _apiPro = ApiProvider();
  final _pastYearYn = RxBool(false);
  final _io = Rx<BioIo>(BioIo());
  final _iof = Rx<BioIoFile>(BioIoFile());
  final _preData = Rxn<BioIo>();

  /// 활성화 탭 index
  final _tabIndex = 0.obs;

  /// Public Variable ----------------------------------------------------------
  FclTab get activeTab => tabList.elementAt(tabIndex);
  final ScrollController scrollController = ScrollController();
  final d184Controller = TextEditingController();
  final d280Controller = TextEditingController();
  final d157Controller = TextEditingController();
  final d281Controller = TextEditingController();

  bool get pastYearYn => _pastYearYn.value;

  BioIo? get preData => _preData.value;

  /// Override Function --------------------------------------------------------
  /// Private Function ---------------------------------------------------------
  /// Public Function ----------------------------------------------------------

  @override
  void onInit() {
    super.onInit();

    _io.listen((p0) {
      if (p0.d184 != null) {
        d184Controller.text = p0.d184!;
      }

      if (p0.d280 != null) {
        d280Controller.text = p0.d280!;
      }
      if (p0.d157 != null) {
        d157Controller.text = p0.d157!;
      }
      if (p0.d281 != null) {
        d281Controller.text = p0.d281!;
      }
    });
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

  @override
  void onClose() {
    pLog.e("onClose");
    d184Controller.dispose();
    d280Controller.dispose();
    d157Controller.dispose();
    d281Controller.dispose();
    super.onClose();
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

  int get tabIndex => _tabIndex.value;

  setTabIndex(int index) {
    _tabIndex.value = index;
    scrollController.jumpToTop();
  }

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

  BioIoFile get iof => _iof.value;

  set io(BioIo io) => _io.value = io;

  final formKey = GlobalKey<FormBuilderState>(debugLabel: 'FclDetailVm');

  prevTab() {
    _tabIndex.value = max(0, tabIndex - 1);
  }

  nextTab() {
    _tabIndex.value = min(maxTabindex, tabIndex + 1);
  }

  _init(String localId) {
    final hiveObj = HiveProvider.select(localId);
    _io.value = hiveObj?.$1 ?? BioIo();
    _iof.value = hiveObj?.$2 ?? BioIoFile();
  }

  Future<Map<String, String>> _upload(BioIoFile iof) async {
    final filesMap = formKey.currentState!.value.entries
        .where((e) => e.value is List<String>)
        .toList()
        .map((e) {
      return MapEntry(e.key, e.value as List<String>);
    }).toList();

    final files = List<IoFile>.empty(growable: true);
    final map = <String, List<String>>{};

    for (MapEntry<String, List<String>> e in filesMap) {
      e.value.asMap().entries.forEach((o) {
        files.add(IoFile(file: File(o.value), fieldName: e.key, index: o.key));
      });
    }

    if (files.isNotEmpty) {
      pLog.i("files ${files}");
      await _apiPro.upload(files.map((e) => e.file).toList()).then((value) {
        pLog.i("upload response $value");

        value.forEachIndexed((index, element) {
          final ioFile = files[index];
          map[ioFile.fieldName] = map[ioFile.fieldName] ?? [];
          map[ioFile.fieldName]!.add(element);
        });
      });
    }

    pLog.i("map $map");
    return {for (var v in map.entries) v.key: v.value.join(",")};
  }

  Future<void> submitServer() async {
    if (await isConnect()) {
      final (_bio, bioFile) = submit();

      final bio =
          BioIo.fromJson({..._bio.toJson(), ...(await _upload(bioFile))});

      try {
        await _apiPro.procFieldSave(bio).then((value) async {
          if (value.isSuccess) {
            if (bio.localId != null) {
              // await HiveProvider.delete(bio.localId!);
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
                await submitServer();
              },
            ),
          ), isScrollControlled: true);
        }
        rethrow;
      } catch (e) {
        rethrow;
      }
    } else {
      showOfflineSb();
    }
  }

  Future<void> submitLocal() async {
    final (io, iof) = submit();

    io.localRegDateTime = io.localRegDateTime ?? DateTime.now().format2;
    io.localUpdDateTime = DateTime.now().format2;
    if (io.localId != null) {
      await HiveProvider.update(io.localId!, io, iof);
    } else {
      await HiveProvider.insert(io, iof);
    }

    await FclListPageVm.to.submit();
    Get.back();
  }

  (BioIo, BioIoFile) submit() {
    formKey.currentState!.save();

    final currentValue = formKey.currentState!.value;
    final bioJson = {
      "gbn": gbn.name,
      ...io.toJson()
        ..removeWhere((key, value) =>
            value == null || value.runtimeType == (List<String>)),
      ...BioIo.fromJson(currentValue.map((key, value) {
        if (value == null) {
          return MapEntry(key, value);
        } else {
          switch (value.runtimeType) {
            case DateTime:
              return MapEntry(key, (value as DateTime).format1);
            case bool:
              return MapEntry(key, boolToYn((value as bool)));
            case const (List<String>):
              return MapEntry(key, '');
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
    final bio = BioIo.fromJson(bioJson);

    final bioFile = BioIoFile.fromMapDynamic(currentValue);

    return (bio, bioFile);
  }
}

class IoFile {
  File file;
  String fieldName;
  int index;

  IoFile({required this.file, required this.fieldName, required this.index});

  @override
  String toString() {
    return 'IoFile{file: ${file.runtimeType}, fieldName: $fieldName, index: $index}';
  }
}
