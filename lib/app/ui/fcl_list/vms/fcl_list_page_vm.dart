import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/api_response.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/gbn.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_list_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_list_out.dart';
import 'package:sisolab_flutter_biosafety/app/data/repositories/select_proc_list_repository.dart';
import 'package:sisolab_flutter_biosafety/app/global/constants/svc_constant.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_big_category.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_list/vms/fcl_new_list_page_vm.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_list/vms/fcl_regular_list_page_vm.dart';
import 'package:sisolab_flutter_biosafety/core/models/async_status.dart';
import 'package:sisolab_flutter_biosafety/core/models/rx_net.dart';

abstract class FclListPageVm extends GetxController {
  static FclListPageVm get to => Get.isRegistered<FclNewListPageVm>()
      ? FclNewListPageVm.to
      : FclRegularListPageVm.to;


  final repository = SelectProcListRepository();

  FclBigCategory get bigCategory {
    throw Error();
  }

  final _param = Rx(SelectProcListIn(
      gbn: Gbn.fd2, firstIndex: 0, lastIndex: SvcConstant.apiListSize));

  /// ------------------------------------------------------
  void fetch() {
    throw Error();
  }

  AsyncStatus<ApiResponse<SelectProcListOut>> get list {
    throw Error();
  }

  @override
  void onInit() {
    super.onInit();
    fetch();
  }
}
