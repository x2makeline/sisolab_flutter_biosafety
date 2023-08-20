import 'package:json_annotation/json_annotation.dart';
import 'package:sisolab_flutter_biosafety/core/models/yn.dart';
import 'package:velocity_x/velocity_x.dart';

class YnConverter implements JsonConverter<bool, String> {
  const YnConverter();

  @override
  bool fromJson(String json) {
    return Yn.y.jsonValues.contains(json);
  }

  @override
  String toJson(bool object) => (object ? Yn.y.name : Yn.n.name).upperCamelCase;
}

class YnNullableConverter implements JsonConverter<bool?, String?> {
  const YnNullableConverter();

  final _converter = const YnConverter();

  @override
  bool? fromJson(String? json) =>
      json == null || json.isEmpty ? null : _converter.fromJson(json);

  @override
  String? toJson(bool? object) =>
      object == null ? null : _converter.toJson(object);
}
