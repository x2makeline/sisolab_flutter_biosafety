import 'dart:async';

import 'package:sisolab_flutter_biosafety/app/data/models/login_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/login_out.dart';
import 'package:sisolab_flutter_biosafety/app/data/repositories/repository.dart';

class AuthRepository extends Repository {
  Future<LoginOut> login(
      {required String userId, required String passwd}) async {
    final res = await api.login(LoginIn(userid: userId, passwd: passwd));

    return res.data!;
  }
}
