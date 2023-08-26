import 'package:shared_preferences/shared_preferences.dart';
import 'package:sisolab_flutter_biosafety/app/data/repositories/repository.dart';
import 'package:sisolab_flutter_biosafety/core/utils/mc_logger.dart';

class StorageRepository extends Repository with PLoggerMixin {
  Future<SharedPreferences> get _instance async =>
      SharedPreferences.getInstance();

  static const _userId = "userId";

  Future<bool> setUserId(String userId) async {
    final pref = await _instance;
    log.i('userId $userId');
    return await pref.setString(_userId, userId);
  }

  Future<String?> get userId =>
      _instance.then((value) => value.getString(_userId));
}
