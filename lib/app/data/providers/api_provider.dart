import 'package:dartlin/control_flow.dart';
import 'package:dio/dio.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/api_response.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/login_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/login_out.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_list_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_list_out.dart';
import 'package:sisolab_flutter_biosafety/app/global/vms/token_vm.dart';
import 'package:sisolab_flutter_biosafety/core/configs/env.dart';

/// 싱글톤
class ApiProvider {
  TokenVm get _tokenVm => TokenVm.to;

  Dio get _dio => Dio(BaseOptions(
      baseUrl: Env.host,
      contentType: "application/json",
      headers: {"access_token": _tokenVm.token?.accessToken}))
    ..let((dio) {
      dio.interceptors
          .add(LogInterceptor(requestBody: true, responseBody: true));
    });

  /// 현장점검 리스트 데이터 가져오기
  Future<ApiResponse<SelectProcListOut>> selectProcList(
          SelectProcListIn req) async =>
      ApiResponse<SelectProcListOut>.fromJson(
              (await _dio.get("/api/selectProcList.do",
                      queryParameters: req.toJson()))
                  .data,
              fromJson: (list) => SelectProcListOut.fromJson({
                "data" : list
              }),
              fieldName: "list")
          .filter();

  /// 로그인
  Future<ApiResponse<LoginOut>> login(LoginIn req) {
    return _dio
        .get("/api/login.do", queryParameters: req.toJson())
        .then((value) {
      ApiResponse.fromJson(value.data).filter();

      return ApiResponse(
          message: "",
          result: ApiResponse.successResult,
          data: LoginOut(
            accessToken: value.headers.map["access_token"]!.first,
            refreshToken: value.headers.map["refresh_token"]!.first,
          ));
    });
  }
}
