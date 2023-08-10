import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class NetworkVm extends GetxController {
  final _connectivity = Connectivity();

  static NetworkVm get to => Get.find<NetworkVm>();
  late final StreamSubscription<ConnectivityResult> _listen;

  final _connectivityResult = Rxn<ConnectivityResult>()
    ..listen((p0) {
      print(p0);
    });

  /// ---
  bool get isConnect => _connectivityResult.value != null
      ? _connectivityResult.value != ConnectivityResult.none
      : false;

  @override
  void onInit() {
    super.onInit();
    print("onInit");
    _listen =
        _connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      _connectivityResult.value = result;
      // Got a new connectivity status!
    });
    _connectivity
        .checkConnectivity()
        .then((value) => _connectivityResult.value = value);
  }

  @override
  void dispose() {
    super.dispose();

    _listen.cancel();
  }
}
