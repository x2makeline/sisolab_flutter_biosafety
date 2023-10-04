import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/token.dart';
import 'package:sisolab_flutter_biosafety/core/providers/pref.dart';
import 'package:sisolab_flutter_biosafety/core/utils/mc_logger.dart';

class TokenVm extends GetxService with PLoggerMixin {
  static TokenVm get to => Get.find();

  final _token = Rxn<Token>();

  Token? get token => _token.value;

  set token(Token? t) => _token.value = t;

  @override
  void onInit() {
    super.onInit();
    clear();
    _sync();
  }

  // Future<void> login({required String userId, required String passwd}) async {
  //   final result = await _authRepository.login(userId: userId, passwd: passwd);
  //   await setTokenToPref(Token(
  //       accessToken: result.accessToken, refreshToken: result.refreshToken));
  // }

  Future<void> setTokenToPref(Token? token) async {
    if (token != null) {
      await Pref.accessToken.setValue(token.accessToken);
      await Pref.refreshToken.setValue(token.refreshToken);
    }
    _sync();
  }

  clear() {
    Pref.accessToken.setValue();
    Pref.refreshToken.setValue();
  }

  void _sync() {
    final accessToken = Pref.accessToken.value;
    final refreshToken = Pref.refreshToken.value;
    token = accessToken != null && refreshToken != null
        ? Token(accessToken: accessToken, refreshToken: refreshToken)
        : null;
  }
}
