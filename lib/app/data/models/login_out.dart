import 'package:json_annotation/json_annotation.dart';

part 'login_out.g.dart';

@JsonSerializable()
class LoginOut {
  String accessToken;
  String refreshToken;

  LoginOut({required this.accessToken, required this.refreshToken});

  factory LoginOut.fromJson(Map<String, dynamic> json) =>
      _$LoginOutFromJson(json);

  Map<String, dynamic> toJson() => _$LoginOutToJson(this);
}
