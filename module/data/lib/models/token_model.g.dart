// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenModel _$$_TokenModelFromJson(Map<String, dynamic> json) =>
    _$_TokenModel(
      access_token: json['access_token'] as String?,
      token_type: json['token_type'] as String?,
      refresh_token: json['refresh_token'] as String?,
      next_token: json['next_token'] as String?,
      expires_in: json['expires_in'] as int?,
      scope: json['scope'] as String?,
      token_expiration: json['token_expiration'],
      pn100: json['pn100'],
      id: json['id'],
      lang: json['lang'] as String?,
      currency: json['currency'] as String?,
      nv103: json['nv103'] as String?,
      nv104: json['nv104'] as String?,
      fullName: json['nv105'] as String?,
      nd106: json['nd106'],
      n121: json['n121'],
      nsms: json['nsms'],
      nn122: json['nn122'],
      nv107: json['nv107'] as String?,
      registerInfo: json['nv108'] as String?,
      nv111: json['nv111'] as String?,
      nv113: json['nv113'] as String?,
      nv120: json['nv120'] as String?,
      account_non_locked: json['account_non_locked'],
      account_enabled: json['account_enabled'],
      remove_nd106: json['remove_nd106'],
      enabled2Fa: json['enabled2Fa'],
      nn130: json['nn130'] as int?,
      nn132: json['nn132'] as int?,
    );

Map<String, dynamic> _$$_TokenModelToJson(_$_TokenModel instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
      'token_type': instance.token_type,
      'refresh_token': instance.refresh_token,
      'next_token': instance.next_token,
      'expires_in': instance.expires_in,
      'scope': instance.scope,
      'token_expiration': instance.token_expiration,
      'pn100': instance.pn100,
      'id': instance.id,
      'lang': instance.lang,
      'currency': instance.currency,
      'nv103': instance.nv103,
      'nv104': instance.nv104,
      'nv105': instance.fullName,
      'nd106': instance.nd106,
      'n121': instance.n121,
      'nsms': instance.nsms,
      'nn122': instance.nn122,
      'nv107': instance.nv107,
      'nv108': instance.registerInfo,
      'nv111': instance.nv111,
      'nv113': instance.nv113,
      'nv120': instance.nv120,
      'account_non_locked': instance.account_non_locked,
      'account_enabled': instance.account_enabled,
      'remove_nd106': instance.remove_nd106,
      'enabled2Fa': instance.enabled2Fa,
      'nn130': instance.nn130,
      'nn132': instance.nn132,
    };
