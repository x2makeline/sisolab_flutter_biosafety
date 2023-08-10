import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/core/models/async_status.dart';

class RxNet<T> extends Rx<AsyncStatus<T>> {
  RxNet([AsyncStatus<T>? initial]) : super(initial ?? AsyncStatus.initial());
}