import 'package:dartlin/control_flow.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sisolab_flutter_biosafety/app/data/repositories/auth_respository.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/token.dart';
import 'package:sisolab_flutter_biosafety/core/utils/mc_logger.dart';

class TokenVm extends GetxController with PLoggerMixin {
  static TokenVm get to => Get.find();
  final AuthRepository _authRepository = AuthRepository();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  static const _accessTokenKey = "access_token";
  static const _refreshTokenKey = "refresh_token";

  final _token = Rxn<Token>();

  Token? get token => _token.value;

  @override
  Future<void> onInit() async {
    super.onInit();
    await _init();
  }

  Future<void> login({required String userId, required String passwd}) async {
    final result = await _authRepository.login(userId: userId, passwd: passwd);
    await _setTokenToPref(Token(
        accessToken: result.accessToken, refreshToken: result.refreshToken));
  }

  Future<void> _setTokenToPref(Token? token) async {
    if (token != null) {
      (await _prefs).let((it) {
        it.setString(_accessTokenKey, token.accessToken);
        it.setString(_refreshTokenKey, token.refreshToken);
      });
      _token.value = token;
    } else {
      _token.value = null;
    }
  }

  Future<void> _init() async {
    (await _prefs).let((it) async {
      final accessToken = it.getString(_accessTokenKey);
      final refreshToken = it.getString(_refreshTokenKey);

      await _setTokenToPref(accessToken != null && refreshToken != null
          ? Token(accessToken: accessToken, refreshToken: refreshToken)
          : null);
    });
  }
}
