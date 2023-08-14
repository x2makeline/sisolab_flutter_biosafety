import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/api_response.dart';

class ApiError implements Exception {
  ApiResponse response;

  ApiError(this.response);

  @override
  String toString() {
    return 'ApiError{response: $response}';
  }

  snackBar() {
    Get.snackbar("에러", response.message);
  }
}
