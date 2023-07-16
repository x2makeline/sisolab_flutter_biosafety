import 'package:sisolab_flutter_biosafety/app/global/models/fcl_sign.dart';

class FclSignWithOrgan extends FclSign {
  FclSignWithOrgan({super.name, super.signature, this.organ});

  String? organ;


  @override
  String toString() {
    return 'FclSignWithOrgan{organ: $organ, name: $name, signature : $signature}';
  }

  @override
  merge({String? name, String? signature, String? organ}) => FclSignWithOrgan(
    name: name ?? this.name,
    signature: signature ?? this.signature,
    organ:  organ ?? this.organ
  );
}
