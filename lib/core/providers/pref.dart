import 'package:dartlin/control_flow.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sisolab_flutter_biosafety/core/utils/mc_logger.dart';

class SPref {
  static SharedPreferences? _sharedPreferences;

  static Future<void> init() async {
    pLogger.d("SPref init");
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static SharedPreferences get sPref {
    if (_sharedPreferences == null) {
      throw "SPref.init 해야함!";
    } else {
      return _sharedPreferences!;
    }
  }
}

/// SharedPreference 추적 위함.
/// int, bool, double, string, List<String>
enum Pref<T> with PLoggerMixin {
  accessToken<String>(),
  refreshToken<String>(),
  /// offline id
  userId<String>();

  T? get value => SPref.sPref.get(name) as T?;

  Future<bool> setValue(T? value) async => SPref.sPref.let((sPref) async {
        pLog.d("setValue $value");
        if (value is int) {
          return await sPref.setInt(name, value);
        } else if (value is bool) {
          return await sPref.setBool(name, value);
        } else if (value is double) {
          return await sPref.setDouble(name, value);
        } else if (value is String) {
          return await sPref.setString(name, value);
        } else if (value is List<String>) {
          return await sPref.setStringList(name, value);
        } else if (value == null) {
          return await sPref.remove(name);
        }

        throw "T가 [int, bool, double, string, List<String>]에 포함되지 않음.";
      });
}
