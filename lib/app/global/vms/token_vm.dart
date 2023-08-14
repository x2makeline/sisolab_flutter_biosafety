import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/repositories/auth_respository.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/token.dart';

class TokenVm extends GetxService {
  final _token = Rxn<Token>();
  final _authRepository = AuthRepository();

  /// ----
  static TokenVm get to => Get.find<TokenVm>();

  Token? get token => _token.value;

  set token(Token? token) => _token.value = token;

  Future<Token> login({required String userId, required String passwd}) async {
    final result = await _authRepository.login(userId: userId, passwd: passwd);
    final token = Token(
        accessToken: result.accessToken, refreshToken: result.refreshToken);
    this.token = token;
    return token;
  }


}
