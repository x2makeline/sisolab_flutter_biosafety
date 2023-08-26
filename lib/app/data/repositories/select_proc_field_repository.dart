import 'package:sisolab_flutter_biosafety/app/data/models/api_response.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_field_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_field_out.dart';
import 'package:sisolab_flutter_biosafety/app/data/repositories/repository.dart';

class SelectProcFieldRepository extends Repository {
  Future<ApiResponse<SelectProcFieldOut>> selectProcField(
      SelectProcFieldIn req) {
    return api.selectProcField(req);
  }
}
