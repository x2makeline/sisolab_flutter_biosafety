import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_search_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/gbn.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_list_in.dart';
import 'package:sisolab_flutter_biosafety/core/models/async_status.dart';
import 'package:sisolab_flutter_biosafety/core/models/rx_net.dart';
import 'package:sisolab_flutter_biosafety/core/providers/hive_provider.dart';
import 'package:sisolab_flutter_biosafety/core/providers/sqflite_provider.dart';
import 'package:sisolab_flutter_biosafety/core/utils/mc_logger.dart';

class FclListPageVm extends GetxController with PLoggerMixin {
  static FclListPageVm get to => Get.find();

  late final Gbn gbn = Get.arguments?['gbn'];
  final searchFormKey = GlobalKey<FormBuilderState>();

  final _list = RxList<BioIo>();

  final pageIndex = 0.obs;

  /// ------------------------------------------------------
  Future<void> fetch(SelectProcListIn req) async {
    _list.value = HiveProvider.selectList(req);

  }

  Future<void> submit() async {
    if (searchFormKey.currentState != null) {
      searchFormKey.currentState!.save();

      final v = searchFormKey.currentState!.value;

      await fetch(SelectProcListIn(
          gbn: gbn,
          searchCompany: v[BioSearchInName.company.name],
          searchDate1: v[BioSearchInName.date1.name],
          searchDate2: v[BioSearchInName.date2.name]));
    }
  }

  List<BioIo> get list => _list;

  @override
  void onReady() {
    submit();
  }
}
