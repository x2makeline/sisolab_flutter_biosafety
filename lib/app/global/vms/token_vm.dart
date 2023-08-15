import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sisolab_flutter_biosafety/app/data/repositories/auth_respository.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/token.dart';
import 'package:sisolab_flutter_biosafety/core/utils/mc_logger.dart';

class TokenVm extends GetxService with FclLogger {
  final _token = Rxn<Token>();
  final _authRepository = AuthRepository();

  static const _accessTokenKey = "access_token";
  static const _refreshTokenKey = "refresh_token";

  /// ----
  static TokenVm get to => Get.find<TokenVm>();

  Future<void> login({required String userId, required String passwd}) async {
    final result = await _authRepository.login(userId: userId, passwd: passwd);
    _setTokenToPref(Token(
        accessToken: result.accessToken, refreshToken: result.refreshToken));
  }

  Future<void> _setTokenToPref(Token token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(_accessTokenKey, token.accessToken);
    prefs.setString(_refreshTokenKey, token.refreshToken);
  }

  Future<Token?> getTokenByPref() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString(_accessTokenKey);
    final refreshToken = prefs.getString(_refreshTokenKey);

    if (accessToken != null && refreshToken != null) {
      final token = Token(refreshToken: refreshToken, accessToken: accessToken);
      log(token);
      return token;
    }
    return null;
  }
}
