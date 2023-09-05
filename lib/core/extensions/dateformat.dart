import 'package:intl/intl.dart';

extension DateTimeFormat on DateTime {
  String get format1 => DateFormat('yyyy-MM-dd').format(this);

  String get format2 => DateFormat('yyyy.MM.dd').format(this);

  String get format3 => DateFormat('yyyy.MM.dd H:m').format(this);
}
