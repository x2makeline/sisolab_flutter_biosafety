import 'package:dio/dio.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/api_response.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_list_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_list_out.dart';
import 'package:sisolab_flutter_biosafety/core/configs/env.dart';

/// 싱글톤
class ApiProvider {
  ApiProvider._privateConstructor();

  static final ApiProvider _instance = ApiProvider._privateConstructor();

  factory ApiProvider() => _instance;

  final _dio = Dio(
    BaseOptions(
      baseUrl: Env.host
    )
  );

  /// 현장점검 리스트 데이터 가져오기
  Future<ApiResponse<SelectProcListOut>> selectProcList(
          SelectProcListIn req) async =>
      ApiResponse.fromJson(
          (await _dio.get("/api/selectProcList.do",
                  queryParameters: req.toJson()))
              .data,
          SelectProcListOut.fromJson);
}
