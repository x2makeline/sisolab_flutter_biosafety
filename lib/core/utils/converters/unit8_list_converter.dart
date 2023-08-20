import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';

class Unit8ListConverter implements JsonConverter<Uint8List, String> {
  const Unit8ListConverter();

  @override
  Uint8List fromJson(String json) {
    final List<int> codeUnits = json.codeUnits;
    final Uint8List unit8List = Uint8List.fromList(codeUnits);

    return unit8List;
  }

  @override
  String toJson(Uint8List object) => String.fromCharCodes(object);
}

class Unit8ListNullableConverter implements JsonConverter<Uint8List?, String?> {
  const Unit8ListNullableConverter();

  final _converter = const Unit8ListConverter();

  @override
  Uint8List? fromJson(String? json) =>
      json == null || json.isEmpty ? null : _converter.fromJson(json);

  @override
  String? toJson(Uint8List? object) =>
      object == null ? null : _converter.toJson(object);
}
