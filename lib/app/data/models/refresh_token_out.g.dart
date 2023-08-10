// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_out.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefreshTokenOut _$RefreshTokenOutFromJson(Map<String, dynamic> json) =>
    RefreshTokenOut(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$RefreshTokenOutToJson(RefreshTokenOut instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
