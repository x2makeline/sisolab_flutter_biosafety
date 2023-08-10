import 'package:json_annotation/json_annotation.dart';

part 'login_in.g.dart';

@JsonSerializable()
class LoginIn {
  String userid;
  String passwd;

  LoginIn({required this.userid, required this.passwd});

  factory LoginIn.fromJson(Map<String, dynamic> json) =>
      _$LoginInFromJson(json);

  Map<String, dynamic> toJson() => _$LoginInToJson(this);
}
