import 'package:dartlin/control_flow.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart' as hiveFlutter;
import 'package:sisolab_flutter_biosafety/app/data/hive/bio_hive.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_list_in.dart';
import 'package:sisolab_flutter_biosafety/core/utils/mc_logger.dart';

class HiveProvider {
  static late Box<BioHive> _box;
  static PLogger log = PLogger(prefix: "HiveProvider");

  static Future<void> init() async {
    log.i("init");
    await hiveFlutter.Hive.initFlutter();
    Hive.registerAdapter(BioHiveAdapter());

    _box = await Hive.openBox('bio');
    // await _box.deleteFromDisk();
  }

  static BioIo? select(String localId) {
    return _box.get(localId)?.bioIo.let((it) => BioIo.fromJson(it));
  }

  static List<BioIo> selectList(SelectProcListIn req) {
    return _box.values.map((e) => BioIo.fromJson(e.bioIo)).toList();
  }

  static Future<void> update(String localId, BioIo bioIo) async {
    log.i("update $localId");
    return await _box.put(localId, BioHive(bioIo: bioIo.toJson()));
  }

  static Future<void> insert(BioIo bioIo) async {
    final localId = DateTime.now().millisecondsSinceEpoch.toString();
    bioIo.localId = localId;
    log.i("insert $localId");
    return await _box.put(localId, BioHive(bioIo: bioIo.toJson()));
  }

  static Future<void> delete(String localId) async {
    return await _box.delete(localId);
  }
}
