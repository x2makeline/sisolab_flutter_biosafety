import 'package:hive/hive.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';

class HiveRepository {
  /// 변경 금지 !!
  static const _BIO_IO_BOX = "BIO_IO_BOX";

  static late Box<BioIo> bioIoBox;

  static Future openBox() async {
    bioIoBox = await Hive.openBox<BioIo>(_BIO_IO_BOX);
  }
}