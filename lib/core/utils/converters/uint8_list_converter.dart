import 'dart:convert';
import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';




class Uint8ListConverter implements JsonConverter<Uint8List, String> {
  const Uint8ListConverter();

  @override
  Uint8List fromJson(String json) => base64.decode(json.replaceAll("data:image/png;base64,", ""));

  @override
  String toJson(Uint8List object) => "data:image/png;base64,${base64.encode(object)}";
}

class Uint8ListNullableConverter implements JsonConverter<Uint8List?, String?> {
  const Uint8ListNullableConverter();

  final _converter = const Uint8ListConverter();

  @override
  Uint8List? fromJson(String? json) =>
      json == null || json.isEmpty ? null : _converter.fromJson(json);

  @override
  String? toJson(Uint8List? object) =>
      object == null ? null : _converter.toJson(object);
}
