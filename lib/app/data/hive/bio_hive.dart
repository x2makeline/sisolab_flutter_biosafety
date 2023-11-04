import 'package:hive/hive.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io_file.dart';

part 'bio_hive.g.dart';

@HiveType(typeId: 0)
class BioHive {
  @HiveField(0)
  Map<String, dynamic> bioIo;

  @HiveField(1)
  BioIoFile? bioIoFile;

  BioHive({required this.bioIo, this.bioIoFile});
}
