import 'dart:convert';

import 'package:data/models/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_model.freezed.dart';

part 'token_model.g.dart';

@freezed
class TokenModel with _$TokenModel {
  const factory TokenModel({
    String? access_token,
    String? token_type,
    String? refresh_token,
    String? next_token,
    int? expires_in,
    String? scope,
    dynamic token_expiration,
    dynamic pn100,
    dynamic id,
    String? lang,
    String? currency,
    String? nv103,
    String? nv104,
    @JsonKey(name: 'nv105') String? fullName,
    dynamic nd106,
    dynamic n121,
    dynamic nsms,
    dynamic nn122,
    String? nv107,
    @JsonKey(name: 'nv108') String? registerInfo,
    String? nv111,
    String? nv113,
    String? nv120,
    dynamic account_non_locked,
    dynamic account_enabled,
    dynamic remove_nd106,
    dynamic enabled2Fa,
    int? nn130,
    int? nn132,
  }) = _TokenModel;

  factory TokenModel.fromJson(Map<String, dynamic> json) =>
      _$TokenModelFromJson(json);
}

extension TokenExt on TokenModel {
  // SessionDao toSessionDao() => SessionDao.fromJson(toJson());

  // SessionEntity toSession(Env env) {
  //   final sessionDao = toSessionDao();
  //   if (!sessionDao.isLoginByAccount) {
  //     return SessionEntity.nonLogged();
  //   }
  //   return SessionLogged.fromJson(sessionDao.toJson())
  //     .copyWith(user: toUserEntity());
  //   // return SessionEntity.logged(
  //   //   access_token: access_token,
  //   //   token_expiration: token_expiration,
  //   //   refresh_token: refresh_token,
  //   //   //refresh_token: ,
  //   //   //isExpired: sessionDao.isExpired(env.timeMinusRefreshToken),
  //   //   next_token: next_token,
  //   //   user: toUserEntity(),
  //   // );
  // }
  UserEntity toUserEntity() {
    return UserEntity(
      userIdToken: pn100 ?? id,
      emailOrPhone: registerInfo,
      fullName: fullName,
      firstName: nv104,
      lastName: nv103,
      emailAddress: registerInfo,
    );
  }
}
