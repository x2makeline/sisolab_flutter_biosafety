import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

Future<bool> isConnect() async =>
    (await Connectivity().checkConnectivity()) != ConnectivityResult.none;

void showOfflineSb() {
  Get.snackbar("메세지", "현재 오프라인 상태입니다.");
}
