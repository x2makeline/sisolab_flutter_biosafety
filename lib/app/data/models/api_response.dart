import 'package:sisolab_flutter_biosafety/app/global/errors/api_error.dart';

class ApiResponse<D> {
  static const successResult = "1";

  /// 1 성공
  String result;
  D? data;
  String message;
  bool isSuccess;
  bool isError;

  ApiResponse({required this.result, this.data, required this.message})
      : isError = result != successResult,
        isSuccess = result == successResult;

  ApiResponse.fromJson(Map<String, dynamic> json,
      {D Function(dynamic)? fromJson})
      : result = json['result'] as String,
        message = json["message"] as String? ?? "",
        isError = json['result'] != successResult,
        isSuccess = json['result'] == successResult,
        data = fromJson != null ? fromJson(json) : null;

  Map<String, dynamic> toJson(ApiResponse<D> instance) => <String, dynamic>{
        'result': instance.result,
        'message': instance.message,
        'data': instance.data
      };

  @override
  String toString() =>
      'ApiResponse{result: $result, data: $data, message: $message, isSuccess: $isSuccess, isError: $isError}';

  filter() {
    if (isError) {
      throw ApiError(this);
    } else {
      return this;
    }
  }
}
