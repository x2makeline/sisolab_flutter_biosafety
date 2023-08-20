import 'package:dartlin/control_flow.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/api_response.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/login_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/login_out.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_field_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_field_out.dart';
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
      ))
        ..let((dio) {
          dio.interceptors
              .add(LogInterceptor(requestBody: true, responseBody: true));

          /// dev
          dio.interceptors
              .add(InterceptorsWrapper(onRequest: (options, handler) async {
            if (options.headers['access_token'] == null) {
              Dio(BaseOptions(
                baseUrl: Env.host,
                contentType: "application/json",
              )).get("/api/login.do", queryParameters: {
                "userid": "test0223",
                "passwd": "1234"
              }).then((value) async {
                final accessToken = value.headers.map["access_token"]!.first;
                final refreshToken = value.headers.map["refresh_token"]!.first;
                final SharedPreferences prefs =
                await SharedPreferences.getInstance();
                prefs.setString("access_token", accessToken);
                prefs.setString("refresh_token", refreshToken);
              });
            }
            return handler.next(options);
          }));

          dio.interceptors
              .add(InterceptorsWrapper(onRequest: (options, handler) async {
            final token = await _tokenVm.getTokenByPref();
            if (token != null) {
              options.headers['access_token'] = token.accessToken;
            }
            return handler.next(options);
          }));


          // dio.interceptors
          //     .add(LogInterceptor(requestBody: true, responseBody: true));
        });

  /// 현장점검 데이터 가져오기
  Future<ApiResponse<SelectProcFieldOut>> selectProcField(
          SelectProcFieldIn req) async =>
      ApiResponse<SelectProcFieldOut>.fromJson(
        (await _dio.get("/api/selectProcField.do",
                queryParameters: req.toJson()))
            .data,
        fromJson: (data) => SelectProcFieldOut.fromJson(
            {"proc": data["proc"], "field": data["field"]}),
      ).filter();

  /// 현장점검 리스트 데이터 가져오기
  Future<ApiResponse<SelectProcListOut>> selectProcList(
          SelectProcListIn req) async =>
      ApiResponse<SelectProcListOut>.fromJson(
        (await _dio.get("/api/selectProcList.do",
                queryParameters: req.toJson()))
            .data,
        fromJson: (json) => SelectProcListOut.fromJson({"data": json["list"]}),
      ).filter();

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
