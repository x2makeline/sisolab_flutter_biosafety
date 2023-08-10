import 'package:json_annotation/json_annotation.dart';

part 'refresh_token_out.g.dart';

@JsonSerializable()
class RefreshTokenOut {
  String accessToken;
  String refreshToken;

  RefreshTokenOut({required this.accessToken, required this.refreshToken});

  factory RefreshTokenOut.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenOutFromJson(json);

  Map<String, dynamic> toJson() => _$RefreshTokenOutToJson(this);
}
