import 'package:logger/logger.dart';

enum FclLogType {
  action(Level.debug),
  error(Level.error),
  change(Level.debug),
  info(Level.info),
  custom(Level.info);

  const FclLogType(this.level);
  final Level level;
}

class FclLog {
  FclLogType type;
  bool stackYn;

  FclLog({this.type = FclLogType.custom, this.stackYn = false});

  log(String? prefix, dynamic message) {
    final Logger logger = stackYn
        ? Logger(
            printer: PrettyPrinter(
            methodCount: 20,
          ))
        : Logger(
            printer: PrettyPrinter(
            methodCount: 0,
          ));

    logger.log(type.level, "[${type.name}] $prefix\n$message");
  }
}

mixin FclLogger {
  final Logger logger = Logger();
  final Logger loggerNoStack = Logger(
      printer: PrettyPrinter(
    methodCount: 0,
  ));
  String get className => runtimeType.toString();
  log(dynamic message, [FclLog? log]) {
    log = log ?? FclLog();
    log.log(className, message);
  }

  actionLog(String action, dynamic message, [bool? stackYn]) {
    FclLog(
      type: FclLogType.action,
      stackYn: stackYn ?? false,
    ).log("$className - $action", message);
  }

  errorLog(dynamic message, [bool? stackYn]) {
    FclLog(
      type: FclLogType.error,
      stackYn: stackYn ?? false,
    ).log(className, message);
  }

  changeLog(dynamic message, [bool? stackYn]) {
    FclLog(
      type: FclLogType.change,
      stackYn: stackYn ?? false,
    ).log(className, message);
  }

  infoLog(dynamic message, [bool? stackYn]) {
    FclLog(
      type: FclLogType.info,
      stackYn: stackYn ?? false,
    ).log(className, message);
  }
}
