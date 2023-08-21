import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';

class Uint8ListConverter implements JsonConverter<Uint8List, String> {
  const Uint8ListConverter();

  @override
  Uint8List fromJson(String json) {
    final List<int> codeUnits = json.codeUnits;
    final Uint8List unit8List = Uint8List.fromList(codeUnits);

    return unit8List;
  }

  @override
  String toJson(Uint8List object) => String.fromCharCodes(object);
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
