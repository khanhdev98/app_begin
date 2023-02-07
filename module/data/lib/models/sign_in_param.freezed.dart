// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenParam _$TokenParamFromJson(Map<String, dynamic> json) {
  return _TokenRequest.fromJson(json);
}

/// @nodoc
mixin _$TokenParam {
  String? get grant_type =>
      throw _privateConstructorUsedError; //19522371@gm.uit.edu.vn
  String? get username => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenParamCopyWith<TokenParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenParamCopyWith<$Res> {
  factory $TokenParamCopyWith(
          TokenParam value, $Res Function(TokenParam) then) =
      _$TokenParamCopyWithImpl<$Res, TokenParam>;
  @useResult
  $Res call({String? grant_type, String? username, String? password});
}

/// @nodoc
class _$TokenParamCopyWithImpl<$Res, $Val extends TokenParam>
    implements $TokenParamCopyWith<$Res> {
  _$TokenParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grant_type = freezed,
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      grant_type: freezed == grant_type
          ? _value.grant_type
          : grant_type // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TokenRequestCopyWith<$Res>
    implements $TokenParamCopyWith<$Res> {
  factory _$$_TokenRequestCopyWith(
          _$_TokenRequest value, $Res Function(_$_TokenRequest) then) =
      __$$_TokenRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? grant_type, String? username, String? password});
}

/// @nodoc
class __$$_TokenRequestCopyWithImpl<$Res>
    extends _$TokenParamCopyWithImpl<$Res, _$_TokenRequest>
    implements _$$_TokenRequestCopyWith<$Res> {
  __$$_TokenRequestCopyWithImpl(
      _$_TokenRequest _value, $Res Function(_$_TokenRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grant_type = freezed,
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_TokenRequest(
      grant_type: freezed == grant_type
          ? _value.grant_type
          : grant_type // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenRequest implements _TokenRequest {
  _$_TokenRequest({this.grant_type, this.username, this.password});

  factory _$_TokenRequest.fromJson(Map<String, dynamic> json) =>
      _$$_TokenRequestFromJson(json);

  @override
  final String? grant_type;
//19522371@gm.uit.edu.vn
  @override
  final String? username;
  @override
  final String? password;

  @override
  String toString() {
    return 'TokenParam(grant_type: $grant_type, username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenRequest &&
            (identical(other.grant_type, grant_type) ||
                other.grant_type == grant_type) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, grant_type, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenRequestCopyWith<_$_TokenRequest> get copyWith =>
      __$$_TokenRequestCopyWithImpl<_$_TokenRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenRequestToJson(
      this,
    );
  }
}

abstract class _TokenRequest implements TokenParam {
  factory _TokenRequest(
      {final String? grant_type,
      final String? username,
      final String? password}) = _$_TokenRequest;

  factory _TokenRequest.fromJson(Map<String, dynamic> json) =
      _$_TokenRequest.fromJson;

  @override
  String? get grant_type;
  @override //19522371@gm.uit.edu.vn
  String? get username;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_TokenRequestCopyWith<_$_TokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

RefreshTokenParam _$RefreshTokenParamFromJson(Map<String, dynamic> json) {
  return _RefreshTokenRequest.fromJson(json);
}

/// @nodoc
mixin _$RefreshTokenParam {
  String? get grant_type => throw _privateConstructorUsedError;
  String? get refresh_token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefreshTokenParamCopyWith<RefreshTokenParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenParamCopyWith<$Res> {
  factory $RefreshTokenParamCopyWith(
          RefreshTokenParam value, $Res Function(RefreshTokenParam) then) =
      _$RefreshTokenParamCopyWithImpl<$Res, RefreshTokenParam>;
  @useResult
  $Res call({String? grant_type, String? refresh_token});
}

/// @nodoc
class _$RefreshTokenParamCopyWithImpl<$Res, $Val extends RefreshTokenParam>
    implements $RefreshTokenParamCopyWith<$Res> {
  _$RefreshTokenParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grant_type = freezed,
    Object? refresh_token = freezed,
  }) {
    return _then(_value.copyWith(
      grant_type: freezed == grant_type
          ? _value.grant_type
          : grant_type // ignore: cast_nullable_to_non_nullable
              as String?,
      refresh_token: freezed == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RefreshTokenRequestCopyWith<$Res>
    implements $RefreshTokenParamCopyWith<$Res> {
  factory _$$_RefreshTokenRequestCopyWith(_$_RefreshTokenRequest value,
          $Res Function(_$_RefreshTokenRequest) then) =
      __$$_RefreshTokenRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? grant_type, String? refresh_token});
}

/// @nodoc
class __$$_RefreshTokenRequestCopyWithImpl<$Res>
    extends _$RefreshTokenParamCopyWithImpl<$Res, _$_RefreshTokenRequest>
    implements _$$_RefreshTokenRequestCopyWith<$Res> {
  __$$_RefreshTokenRequestCopyWithImpl(_$_RefreshTokenRequest _value,
      $Res Function(_$_RefreshTokenRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grant_type = freezed,
    Object? refresh_token = freezed,
  }) {
    return _then(_$_RefreshTokenRequest(
      grant_type: freezed == grant_type
          ? _value.grant_type
          : grant_type // ignore: cast_nullable_to_non_nullable
              as String?,
      refresh_token: freezed == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RefreshTokenRequest implements _RefreshTokenRequest {
  _$_RefreshTokenRequest({this.grant_type, this.refresh_token});

  factory _$_RefreshTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RefreshTokenRequestFromJson(json);

  @override
  final String? grant_type;
  @override
  final String? refresh_token;

  @override
  String toString() {
    return 'RefreshTokenParam(grant_type: $grant_type, refresh_token: $refresh_token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshTokenRequest &&
            (identical(other.grant_type, grant_type) ||
                other.grant_type == grant_type) &&
            (identical(other.refresh_token, refresh_token) ||
                other.refresh_token == refresh_token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, grant_type, refresh_token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefreshTokenRequestCopyWith<_$_RefreshTokenRequest> get copyWith =>
      __$$_RefreshTokenRequestCopyWithImpl<_$_RefreshTokenRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RefreshTokenRequestToJson(
      this,
    );
  }
}

abstract class _RefreshTokenRequest implements RefreshTokenParam {
  factory _RefreshTokenRequest(
      {final String? grant_type,
      final String? refresh_token}) = _$_RefreshTokenRequest;

  factory _RefreshTokenRequest.fromJson(Map<String, dynamic> json) =
      _$_RefreshTokenRequest.fromJson;

  @override
  String? get grant_type;
  @override
  String? get refresh_token;
  @override
  @JsonKey(ignore: true)
  _$$_RefreshTokenRequestCopyWith<_$_RefreshTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
