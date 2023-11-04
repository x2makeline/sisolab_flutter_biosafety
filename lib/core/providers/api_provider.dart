import 'dart:io';

import 'package:dartlin/control_flow.dart';
import 'package:dio/dio.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/api_response.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/login_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/login_out.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/proc_field_save_out.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/proc_pre_field_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_field_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_list_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_list_out.dart';
import 'package:sisolab_flutter_biosafety/app/global/errors/api_error.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/token.dart';
import 'package:sisolab_flutter_biosafety/core/configs/env.dart';
import 'package:sisolab_flutter_biosafety/core/providers/pref.dart';
import 'package:sisolab_flutter_biosafety/core/utils/mc_logger.dart';

/// 싱글톤
class ApiProvider with PLoggerMixin {
  Token? get _token => Pref.accessToken.value != null
      ? Token(
          accessToken: Pref.accessToken.value!,
          refreshToken: Pref.refreshToken.value!,
        )
      : null;

  ApiProvider._();

  static final ApiProvider _instance = ApiProvider._();

  factory ApiProvider() => _instance;

  Dio get _dio => Dio(BaseOptions(
        baseUrl: Env.host,
        contentType: "application/json",
      ))
        ..let(
          (dio) {
            dio.interceptors
                .add(InterceptorsWrapper(onRequest: (options, handler) async {
              /// 로그인 제외
              if (!['/comm/uploadfile2.do', "/api/login.do"]
                  .contains(options.path)) {
                if (_token != null) {
                  if (_token!.expByAccessToken.compareTo(DateTime.now()) < 0) {
                    return handler.reject(DioException(
                        requestOptions: options,
                        error: ApiError(type: ApiErrorType.expiredToken)));
                  }

                  print(_token!.accessToken);
                  options.headers['access_token'] = _token!.accessToken;
                } else {
                  return handler.reject(DioException(
                      requestOptions: options,
                      error: ApiError(type: ApiErrorType.nonToken)));
                }
              }

              return handler.next(options);
            }, onResponse: (res, handler) {
              if (res.data['result'] != '1') {
                final apiRes = ApiResponse.fromJson(res.data);
                ApiError(apiResponse: apiRes).snackBar;
                return handler.reject(DioException(
                    requestOptions: res.requestOptions,
                    response: res,
                    error: ApiError(apiResponse: apiRes)));
              }
              return handler.next(res);
            }));
          },
        );

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
    pLog.i("procFieldSave ${req.toJson()}");
    pLog.i("procFieldSave.gbn ${req.toJson()["gbn"]}");

    return ApiResponse<ProcFieldSaveOut>.fromJson(
      (await _dio.post("/api/procFieldSave.do",
              data: FormData.fromMap(req.toJson())))
          .data,
      fromJson: (data) {
        pLog.i(data);
        return ProcFieldSaveOut.fromJson(data);
      },
    );
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
      );

//   * 현장점검 과년도 자료 가져오기 : GET방식
//   주소 : http://125.6.37.38:9090/api/procPreField.do
// // 파라미터
//   gbn : fd2 또는 fd3
//   idx : 현장점검 Key
//   company : 운영기관명
//   d184 : 설치·운영 장소명
//
// // 헤더 정보
//   Access_Token : 사용자 접근 토큰
//
// // 리턴값 :
//   result : 1 => 성공, -1 => 오류, -2 => 유효하지 않은 AccessToken 입니다, -3 => 권한이 없습니다
//   message : 결과 메시지
//   proc : 과년도 신청정보
//   field : 과년도 현장점검 데이터

  /// 현장점검 데이터 과년도 가져오기
  Future<ApiResponse<BioIo>> procPreField(ProcPreFieldIn req) async =>
      ApiResponse<BioIo>.fromJson(
        (await _dio.get("/api/procPreField.do", queryParameters: req.toJson()))
            .data,
        fromJson: (data) => BioIo.fromJson({
          ...data["proc"],
          ...data["field"],
        }),
      );

  /// 현장점검 리스트 데이터 가져오기
  Future<ApiResponse<SelectProcListOut>> selectProcList(
          SelectProcListIn req) async =>
      ApiResponse<SelectProcListOut>.fromJson(
        (await _dio.get("/api/selectProcList.do",
                queryParameters: req.toJson()))
            .data,
        fromJson: (json) => SelectProcListOut.fromJson({"data": json["list"]}),
      );

  /// 로그인
  Future<ApiResponse<LoginOut>> login(LoginIn req) {
    return _dio
        .get("/api/login.do", queryParameters: req.toJson())
        .then((value) {
      ApiResponse.fromJson(value.data);

      return ApiResponse(
          message: "",
          result: ApiResponse.successResult,
          data: LoginOut(
            accessToken: value.headers.map["access_token"]!.first,
            refreshToken: value.headers.map["refresh_token"]!.first,
          ));
    });
  }

  Future<List<String>> upload(List<File> files) async {

    return await Dio(BaseOptions(
      baseUrl: Env.host,
      contentType: "application/json",
    ))
        .post('/comm/uploadfile2.do',
        data: FormData.fromMap({
          "files[]": files
              .map((file) => MultipartFile.fromFileSync(file.path))
              .toList(),
        }),
        options: Options(
          contentType: "multipart/form-data",
        ))
        .then((value) {

          return (value.data as List<dynamic>).map((e) => e as String).toList();
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
      ApiResponse.fromJson(value.data);

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
