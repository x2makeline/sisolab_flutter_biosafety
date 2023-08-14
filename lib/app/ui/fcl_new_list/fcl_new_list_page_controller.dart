import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/api_response.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/gbn.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_list_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_list_out.dart';
import 'package:sisolab_flutter_biosafety/app/data/repositories/select_proc_list_repository.dart';
import 'package:sisolab_flutter_biosafety/app/global/constants/svc_constant.dart';
import 'package:sisolab_flutter_biosafety/core/models/async_status.dart';
import 'package:sisolab_flutter_biosafety/core/models/rx_net.dart';

class FclNewListPageController extends GetxController {
  final _repository = SelectProcListRepository();
  final _list = RxNet<ApiResponse<SelectProcListOut>>(AsyncStatus.loading());

  final _param = Rx(SelectProcListIn(
      gbn: Gbn.fd2, firstIndex: 0, lastIndex: SvcConstant.apiListSize));

  /// ------------------------------------------------------
  fetch() {
    _repository.selectProcList(_param.value).then((value) {
      if (value.isSuccess) {
        _list.value = AsyncStatus.success(value);
      } else {
        _list.value = AsyncStatus.error(value);
      }
    });
  }

  AsyncStatus<ApiResponse<SelectProcListOut>> get list => _list.value;

  @override
  void onInit() {
    super.onInit();
    fetch();
  }
}
