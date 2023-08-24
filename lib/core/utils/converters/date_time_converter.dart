import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

final DateFormat formatter = DateFormat('yyyy-MM-dd');

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String json) => DateTime.parse(json);

  @override
  String toJson(DateTime object) => formatter.format(object);
}

class DateTimeNullableConverter implements JsonConverter<DateTime?, String?> {
  const DateTimeNullableConverter();

  final DateTimeConverter _converter = const DateTimeConverter();

  @override
  DateTime? fromJson(String? json) =>
      json == null || json.isEmpty ? null : _converter.fromJson(json);

  @override
  String? toJson(DateTime? object) =>
      object != null ? _converter.toJson(object) : null;
}
