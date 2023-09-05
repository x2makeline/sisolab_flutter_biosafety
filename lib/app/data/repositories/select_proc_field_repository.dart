import 'package:sisolab_flutter_biosafety/app/data/models/api_response.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/proc_pre_field_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_field_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/repositories/repository.dart';

class SelectProcFieldRepository extends Repository {
  Future<ApiResponse<BioIo>> selectProcField(SelectProcFieldIn req) {
    return api.selectProcField(req);
  }

  Future<ApiResponse<BioIo>> procPreField(ProcPreFieldIn req) {
    return api.procPreField(req);
  }
}
