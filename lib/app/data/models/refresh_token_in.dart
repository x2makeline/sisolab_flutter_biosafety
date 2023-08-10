import 'package:json_annotation/json_annotation.dart';

part 'refresh_token_in.g.dart';

@JsonSerializable()
class RefreshTokenIn {
  String accessToken;
  String refreshToken;


  RefreshTokenIn({required this.accessToken, required this.refreshToken});

  factory RefreshTokenIn.fromJson(Map<String, dynamic> json) => _$RefreshTokenInFromJson(json);

  Map<String, dynamic> toJson() => _$RefreshTokenInToJson(this);
}