import 'package:dartlin/control_flow.dart';
import 'package:dio/dio.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/api_response.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/login_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/login_out.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/proc_field_save_out.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_field_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_list_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_list_out.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/token.dart';
import 'package:sisolab_flutter_biosafety/app/global/vms/token_vm.dart';
import 'package:sisolab_flutter_biosafety/core/configs/env.dart';
import 'package:sisolab_flutter_biosafety/core/utils/mc_logger.dart';

/// 싱글톤
class ApiProvider with PLoggerMixin {
  TokenVm get _tokenVm => TokenVm.to;

  Token? get _token => _tokenVm.token;

  ApiProvider._();

  static final ApiProvider _instance = ApiProvider._();

  factory ApiProvider() => _instance;

  Dio get _dio => Dio(BaseOptions(
        baseUrl: Env.host,
        contentType: "application/json",
      ))
        ..let((dio) {
          /// dev
          dio.interceptors
              .add(LogInterceptor(requestBody: true, responseBody: true));

          dio.interceptors
              .add(InterceptorsWrapper(onRequest: (options, handler) async {
            if (_token != null &&
                options.path != "/api/refeshToken.do" &&
                options.path != "/api/login.do") {
              pLog.i("token $_token");
              if (_token!.expByAccessToken.compareTo(DateTime.now()) < 0) {
                final result = await refreshToken(_token!);

                if (result.isSuccess) {
                  await _tokenVm.setTokenToPref(Token(
                      accessToken: result.data!.accessToken,
                      refreshToken: result.data!.refreshToken));
                }
              }

              options.headers['access_token'] = _token!.accessToken;
            }

            return handler.next(options);
          }));

          // dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
          //   if (_token != null) {
          //     options.headers['access_token'] = _token!.accessToken;
          //   }
          //
          //   return handler.next(options);
          // }));
        });

//   * 현장점검 데이터 저장 : POST방식
//   주소 : http://125.6.37.38:9090/api/procFieldSave.do
//
// // 파라미터
//   gbn : fd2 또는 fd3
//
//   현장점검 파라미터 일체
//   idx 키값이 같이 넘어올 시 수정이 실행됨
//
// // 헤더 정보
//   Access_Token : 사용자 접근 토큰
//
// // 리턴값 :
//   result : 1 => 성공, -1 => 오류, -2 => 유효하지 않은 AccessToken 입니다, -3 => 권한이 없습니다
//   message : 결과 메시지
  /// 현장점검 데이터 저장
  Future<ApiResponse<ProcFieldSaveOut>> procFieldSave(BioIo req) async {
    return ApiResponse<ProcFieldSaveOut>.fromJson(
      (await _dio.post("/api/procFieldSave.do", data: FormData.fromMap(req.toJson()))).data,
      fromJson: (data) => ProcFieldSaveOut.fromJson(data),
    ).filter();
  }

  /// 현장점검 데이터 가져오기
  Future<ApiResponse<BioIo>> selectProcField(SelectProcFieldIn req) async =>
      ApiResponse<BioIo>.fromJson(
        (await _dio.get("/api/selectProcField.do",
                queryParameters: req.toJson()))
            .data,
        fromJson: (data) => BioIo.fromJson({
          ...data["proc"],
          ...data["field"],
        }),
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

  /// 토큰 갱신
  Future<ApiResponse<LoginOut>> refreshToken(Token token) {
    return _dio
        .get("/api/refeshToken.do",
            options: Options(headers: {
              'access_token': token.accessToken,
              'refresh_token': token.refreshToken,
            }))
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
