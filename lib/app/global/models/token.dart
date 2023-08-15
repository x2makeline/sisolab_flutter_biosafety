import 'package:json_annotation/json_annotation.dart';

part 'token.g.dart';

@JsonSerializable()
class Token {
  String accessToken;
  String refreshToken;

  Token({required this.accessToken, required this.refreshToken})
      : assert(accessToken.isNotEmpty || refreshToken.isNotEmpty);

  @override
  String toString() => 'Token{accessToken: $accessToken, refreshToken: $refreshToken}';

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

  Map<String, dynamic> toJson() => _$TokenToJson(this);
}
