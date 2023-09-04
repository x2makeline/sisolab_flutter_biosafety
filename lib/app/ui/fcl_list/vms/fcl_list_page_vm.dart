import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/api_response.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_search_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/gbn.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_list_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_list_out.dart';
import 'package:sisolab_flutter_biosafety/app/data/repositories/select_proc_list_repository.dart';
import 'package:sisolab_flutter_biosafety/app/global/vms/network_vm.dart';
import 'package:sisolab_flutter_biosafety/core/models/async_status.dart';
import 'package:sisolab_flutter_biosafety/core/models/rx_net.dart';
import 'package:sisolab_flutter_biosafety/core/utils/mc_logger.dart';

class FclListPageVm extends GetxController with PLoggerMixin {
  static FclListPageVm get to => Get.find();

  final repository = SelectProcListRepository();

  NetworkVm get networkVm => Get.find<NetworkVm>();
  final Gbn gbn =
      Gbn.values.firstWhere((element) => element.name == Get.parameters["id"]);
  final searchFormKey = GlobalKey<FormBuilderState>();

  final _repository = SelectProcListRepository();
  final _list = RxNet<ApiResponse<SelectProcListOut>>(AsyncStatus.loading());

  final pageIndex = 1.obs;

  /// ------------------------------------------------------
  void fetch(SelectProcListIn req) {
    if (networkVm.isConnect) {
      _repository.selectProcList(req).then((value) {
        if (value.isSuccess) {
          _list.value = AsyncStatus.success(value);
        } else {
          _list.value = AsyncStatus.error(value);
        }
      });
    } else {
      // _list.value = AsyncStatus.success(ApiResponse(
      //     message: "",
      //     result: "",
      //     data: SelectProcListOut(
      //         data: HiveRepository.bioIoBox.values
      //             .map((e) => e.toSelectProcListItem())
      //             .toList())));
    }
  }

  void submit() {
    if (searchFormKey.currentState != null) {
      searchFormKey.currentState!.save();

      final v = searchFormKey.currentState!.value;
      pLog.d(v);

      fetch(SelectProcListIn(
          gbn: gbn,
          pageIndex: pageIndex.value,
          searchCompany: v[BioSearchInName.company.name],
          searchDate1: v[BioSearchInName.date1.name],
          searchDate2: v[BioSearchInName.date2.name]));
    }
  }

  AsyncStatus<ApiResponse<SelectProcListOut>> get list => _list.value;

  @override
  void onReady() {
    submit();
  }
}
