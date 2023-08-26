import 'package:sisolab_flutter_biosafety/app/data/models/api_response.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_list_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_list_out.dart';
import 'package:sisolab_flutter_biosafety/app/data/repositories/repository.dart';

class SelectProcListRepository extends Repository {
  Future<ApiResponse<SelectProcListOut>> selectProcList(SelectProcListIn req) {
    return api.selectProcList(req);
  }
}
