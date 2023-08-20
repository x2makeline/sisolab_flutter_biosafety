import 'package:json_annotation/json_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String json) => DateTime.parse(json);

  @override
  String toJson(DateTime object) => object.toString();
}


class DateTimeNullableConverter implements JsonConverter<DateTime?, String?> {
  const DateTimeNullableConverter();

  @override
  DateTime? fromJson(String? json) => json == null || json.isEmpty ? null : DateTime.parse(json);

  @override
  String? toJson(DateTime? object) => object?.toString();
}
