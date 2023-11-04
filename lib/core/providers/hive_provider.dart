import 'package:dartlin/control_flow.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart' as hiveFlutter;
import 'package:intl/intl.dart';
import 'package:sisolab_flutter_biosafety/app/data/hive/bio_hive.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io_file.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_list_in.dart';
import 'package:sisolab_flutter_biosafety/core/utils/mc_logger.dart';

class HiveProvider {
  static late Box<BioHive> _box;
  static PLogger log = PLogger(prefix: "HiveProvider");

  static Future<void> init() async {
    log.i("init");
    await hiveFlutter.Hive.initFlutter();

    Hive.registerAdapter(BioIoFileAdapter());
    Hive.registerAdapter(BioHiveAdapter());
    _box = await Hive.openBox('bio1');
    // await _box.deleteFromDisk();
  }

  static (BioIo, BioIoFile?)? select(String localId) {
    final b = _box.get(localId);

    return b?.let((it) => (BioIo.fromJson(it.bioIo), it.bioIoFile));

  }

  static DateFormat get format => DateFormat('yyyy-MM-dd H:m');

  static List<BioIo> selectList(SelectProcListIn req) {
    return _box.values.map((e) => BioIo.fromJson(e.bioIo)).where((io) {

      return io.gbn == req.gbn.name &&
          (req.searchCompany == null ||
              (io.company != null &&
                  io.company!.contains(req.searchCompany!))) &&
          (req.searchDate1 == null ||
              (io.localUpdDateTime != null &&
                  req.searchDate1!
                          .compareTo(format.parse(io.localUpdDateTime!)) <
                      1)) &&
          (req.searchDate2 == null ||
              (io.localUpdDateTime != null &&
                  req.searchDate2!
                          .compareTo(format.parse(io.localUpdDateTime!)) >
                      -1));
    }).toList();
  }

  static Future<void> update(String localId, BioIo bioIo, [BioIoFile? bioIoFile]) async {
    log.i("update $localId");
    return await _box.put(localId, BioHive(bioIo: bioIo.toJson(), bioIoFile:bioIoFile));
  }

  static Future<void> insert(BioIo bioIo, [BioIoFile? bioIoFile]) async {
    final localId = DateTime.now().millisecondsSinceEpoch.toString();
    bioIo.localId = localId;
    log.i("insert $localId");
    return await _box.put(localId, BioHive(bioIo: bioIo.toJson(),bioIoFile:bioIoFile));
  }

  static Future<void> delete(String localId) async {
    return await _box.delete(localId);
  }
}
