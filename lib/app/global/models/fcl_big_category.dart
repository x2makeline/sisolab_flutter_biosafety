import 'package:sisolab_flutter_biosafety/app/data/models/gbn.dart';

enum FclBigCategory {
  NEW("new", Gbn.fd2),
  REGULAR("regular", Gbn.fd1);

  final String path;
  final Gbn gbn;

  const FclBigCategory(this.path, this.gbn);
}