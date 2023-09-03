import 'package:dartlin/control_flow.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/api_response.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/gbn.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_list_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_list_out.dart';
import 'package:sisolab_flutter_biosafety/app/data/repositories/hive_repository.dart';
import 'package:sisolab_flutter_biosafety/app/data/repositories/select_proc_list_repository.dart';
import 'package:sisolab_flutter_biosafety/app/global/vms/network_vm.dart';
import 'package:sisolab_flutter_biosafety/core/models/async_status.dart';
import 'package:sisolab_flutter_biosafety/core/models/rx_net.dart';

class FclListPageVm extends GetxController {
  static FclListPageVm get to => Get.find();

  final repository = SelectProcListRepository();

  NetworkVm get networkVm => Get.find<NetworkVm>();
  final Gbn gbn = Gbn.values.firstWhere((element) => element.name == Get.parameters["id"]);

  final _repository = SelectProcListRepository();
  final _list = RxNet<ApiResponse<SelectProcListOut>>(AsyncStatus.loading());

  late final _param = Rx(SelectProcListIn(
    gbn: gbn,
    pageIndex: 1,
  ));

  /// ------------------------------------------------------
  void fetch() {
    if (networkVm.isConnect) {
      _repository.selectProcList(_param.value).then((value) {
        if (value.isSuccess) {
          _list.value = AsyncStatus.success(value);
        } else {
          _list.value = AsyncStatus.error(value);
        }
      });
    } else {
      _list.value = AsyncStatus.success(ApiResponse(
          message: "",
          result: "",
          data: SelectProcListOut(
              data: HiveRepository.bioIoBox.values
                  .map((e) => e.toSelectProcListItem())
                  .toList())));
    }
  }

  AsyncStatus<ApiResponse<SelectProcListOut>> get list => _list.value;

  void onInit() {
    super.onInit();
    fetch();
  }
}
