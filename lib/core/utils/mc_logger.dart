/// project logger

import 'package:dartlin/control_flow.dart';
import 'package:logger/logger.dart';

class PLoggerPrinter extends PrettyPrinter {
  static const _defaultStackMethodCount = 20;
  static const _lineLength = 30;

  PLoggerPrinter({
    bool stackYn = false,
    int? methodCount,
    int errorMethodCount = _defaultStackMethodCount,
  }) : super(
      printTime: false,
      colors: true,
      noBoxingByDefault: false,
      lineLength: _lineLength,
      methodCount:
      methodCount ?? (stackYn ? _defaultStackMethodCount : 0));
}

final pLogger = PLogger();

class PLogger extends Logger {
  PLogger({LogPrinter? printer, String? prefix})
      : super(
      printer: PrefixPrinter(
          _PrefixPrinter(printer ?? PLoggerPrinter(), prefix: prefix)));
}

mixin PLoggerMixin {
  PLogger get log => PLogger(
    prefix: runtimeType.toString(),
  );

  PLogger get pLog => PLogger(
    prefix: runtimeType.toString(),
  );
}

class _PrefixPrinter extends LogPrinter {
  final LogPrinter _realPrinter;
  final String? prefix;

  _PrefixPrinter(
      this._realPrinter, {
        this.prefix,
      });

  @override
  List<String> log(LogEvent event) => _realPrinter.log(LogEvent(
      event.level,
      "${event.time}${iff(prefix != null, () => "\n$prefix") ?? ""}\n${StringBuffer().let((it) {
        for (var element in List.generate(PLoggerPrinter._lineLength - 4,
                (index) => PrettyPrinter.doubleDivider)) {
          it.write(element);
        }
        return it;
      }).toString()}\n${event.message}"));
}
