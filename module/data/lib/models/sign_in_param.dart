import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_param.freezed.dart';
part 'sign_in_param.g.dart';

@freezed
class TokenParam with _$TokenParam {
  factory TokenParam({
    String? grant_type,
    //19522371@gm.uit.edu.vn
    String? username,
    String? password,
  }) = _TokenRequest;
  factory TokenParam.fromJson(Map<String, dynamic> json) =>
      _$TokenParamFromJson(json);
}

@freezed
class RefreshTokenParam with _$RefreshTokenParam {
  factory RefreshTokenParam({
    String? grant_type,
    String? refresh_token,
  }) = _RefreshTokenRequest;
  factory RefreshTokenParam.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenParamFromJson(json);
}
