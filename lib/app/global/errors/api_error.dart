import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/api_response.dart';

enum ApiErrorType {
  unknown("알수 없는 에러가 발생했습니다."),
  nonToken("토큰이 없습니다."),
  expiredToken("만료된 토큰");

  final String message;

  const ApiErrorType(this.message);
}

class ApiError {
  ApiResponse? apiResponse;
  ApiErrorType type;
  String? message;

  ApiError({this.apiResponse, this.type = ApiErrorType.unknown, this.message});

  get snackBar {
    Get.snackbar("에러", message ?? apiResponse?.message ?? type.message);
  }

  @override
  String toString() {
    return 'ApiError{apiResponse: $apiResponse, type: $type, message: $message}';
  }
}
