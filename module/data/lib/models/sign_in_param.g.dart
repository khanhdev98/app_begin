// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenRequest _$$_TokenRequestFromJson(Map<String, dynamic> json) =>
    _$_TokenRequest(
      grant_type: json['grant_type'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$_TokenRequestToJson(_$_TokenRequest instance) =>
    <String, dynamic>{
      'grant_type': instance.grant_type,
      'username': instance.username,
      'password': instance.password,
    };

_$_RefreshTokenRequest _$$_RefreshTokenRequestFromJson(
        Map<String, dynamic> json) =>
    _$_RefreshTokenRequest(
      grant_type: json['grant_type'] as String?,
      refresh_token: json['refresh_token'] as String?,
    );

Map<String, dynamic> _$$_RefreshTokenRequestToJson(
        _$_RefreshTokenRequest instance) =>
    <String, dynamic>{
      'grant_type': instance.grant_type,
      'refresh_token': instance.refresh_token,
    };
