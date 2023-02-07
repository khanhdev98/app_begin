// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  dynamic get message => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  dynamic get response => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic message, dynamic error, dynamic response)
        unauthorized,
    required TResult Function(dynamic message, dynamic error, dynamic response)
        request,
    required TResult Function(dynamic message, dynamic error, dynamic response)
        permission,
    required TResult Function(dynamic message, dynamic error, dynamic response)
        parser,
    required TResult Function(dynamic message, dynamic error, dynamic response)
        other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic message, dynamic error, dynamic response)?
        unauthorized,
    TResult? Function(dynamic message, dynamic error, dynamic response)?
        request,
    TResult? Function(dynamic message, dynamic error, dynamic response)?
        permission,
    TResult? Function(dynamic message, dynamic error, dynamic response)? parser,
    TResult? Function(dynamic message, dynamic error, dynamic response)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic message, dynamic error, dynamic response)?
        unauthorized,
    TResult Function(dynamic message, dynamic error, dynamic response)? request,
    TResult Function(dynamic message, dynamic error, dynamic response)?
        permission,
    TResult Function(dynamic message, dynamic error, dynamic response)? parser,
    TResult Function(dynamic message, dynamic error, dynamic response)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(NetworkFailureException value) request,
    required TResult Function(PermissionNotGrantedException value) permission,
    required TResult Function(ParserException value) parser,
    required TResult Function(OtherException value) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(NetworkFailureException value)? request,
    TResult? Function(PermissionNotGrantedException value)? permission,
    TResult? Function(ParserException value)? parser,
    TResult? Function(OtherException value)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(NetworkFailureException value)? request,
    TResult Function(PermissionNotGrantedException value)? permission,
    TResult Function(ParserException value)? parser,
    TResult Function(OtherException value)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({dynamic message, dynamic error, dynamic response});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnauthorizedExceptionCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$UnauthorizedExceptionCopyWith(_$UnauthorizedException value,
          $Res Function(_$UnauthorizedException) then) =
      __$$UnauthorizedExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic message, dynamic error, dynamic response});
}

/// @nodoc
class __$$UnauthorizedExceptionCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnauthorizedException>
    implements _$$UnauthorizedExceptionCopyWith<$Res> {
  __$$UnauthorizedExceptionCopyWithImpl(_$UnauthorizedException _value,
      $Res Function(_$UnauthorizedException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? response = freezed,
  }) {
    return _then(_$UnauthorizedException(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$UnauthorizedException implements UnauthorizedException {
  _$UnauthorizedException({this.message, this.error, this.response});

  @override
  final dynamic message;
  @override
  final dynamic error;
  @override
  final dynamic response;

  @override
  String toString() {
    return 'Failure.unauthorized(message: $message, error: $error, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedException &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedExceptionCopyWith<_$UnauthorizedException> get copyWith =>
      __$$UnauthorizedExceptionCopyWithImpl<_$UnauthorizedException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic message, dynamic error, dynamic response)
        unauthorized,
    required TResult Function(dynamic message, dynamic error, dynamic response)
        request,
    required TResult Function(dynamic message, dynamic error, dynamic response)
        permission,
    required TResult Function(dynamic message, dynamic error, dynamic response)
        parser,
    required TResult Function(dynamic message, dynamic error, dynamic response)
        other,
  }) {
    return unauthorized(message, error, response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic message, dynamic error, dynamic response)?
        unauthorized,
    TResult? Function(dynamic message, dynamic error, dynamic response)?
        request,
    TResult? Function(dynamic message, dynamic error, dynamic response)?
        permission,
    TResult? Function(dynamic message, dynamic error, dynamic response)? parser,
    TResult? Function(dynamic message, dynamic error, dynamic response)? other,
  }) {
    return unauthorized?.call(message, error, response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic message, dynamic error, dynamic response)?
        unauthorized,
    TResult Function(dynamic message, dynamic error, dynamic response)? request,
    TResult Function(dynamic message, dynamic error, dynamic response)?
        permission,
    TResult Function(dynamic message, dynamic error, dynamic response)? parser,
    TResult Function(dynamic message, dynamic error, dynamic response)? other,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message, error, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(NetworkFailureException value) request,
    required TResult Function(PermissionNotGrantedException value) permission,
    required TResult Function(ParserException value) parser,
    required TResult Function(OtherException value) other,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(NetworkFailureException value)? request,
    TResult? Function(PermissionNotGrantedException value)? permission,
    TResult? Function(ParserException value)? parser,
    TResult? Function(OtherException value)? other,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(NetworkFailureException value)? request,
    TResult Function(PermissionNotGrantedException value)? permission,
    TResult Function(ParserException value)? parser,
    TResult Function(OtherException value)? other,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class UnauthorizedException implements Failure, Exception {
  factory UnauthorizedException(
      {final dynamic message,
      final dynamic error,
      final dynamic response}) = _$UnauthorizedException;

  @override
  dynamic get message;
  @override
  dynamic get error;
  @override
  dynamic get response;
  @override
  @JsonKey(ignore: true)
  _$$UnauthorizedExceptionCopyWith<_$UnauthorizedException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkFailureExceptionCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NetworkFailureExceptionCopyWith(_$NetworkFailureException value,
          $Res Function(_$NetworkFailureException) then) =
      __$$NetworkFailureExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic message, dynamic error, dynamic response});
}

/// @nodoc
class __$$NetworkFailureExceptionCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NetworkFailureException>
    implements _$$NetworkFailureExceptionCopyWith<$Res> {
  __$$NetworkFailureExceptionCopyWithImpl(_$NetworkFailureException _value,
      $Res Function(_$NetworkFailureException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? response = freezed,
  }) {
    return _then(_$NetworkFailureException(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$NetworkFailureException implements NetworkFailureException {
  _$NetworkFailureException({this.message, this.error, this.response});

  @override
  final dynamic message;
  @override
  final dynamic error;
  @override
  final dynamic response;

  @override
  String toString() {
    return 'Failure.request(message: $message, error: $error, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkFailureException &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkFailureExceptionCopyWith<_$NetworkFailureException> get copyWith =>
      __$$NetworkFailureExceptionCopyWithImpl<_$NetworkFailureException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic message, dynamic error, dynamic response)
        unauthorized,
    required TResult Function(dynamic message, dynamic error, dynamic response)
        request,
    required TResult Function(dynamic message, dynamic error, dynamic response)
        permission,
    required TResult Function(dynamic message, dynamic error, dynamic response)
        parser,
    required TResult Function(dynamic message, dynamic error, dynamic response)
        other,
  }) {
    return request(message, error, response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic message, dynamic error, dynamic response)?
        unauthorized,
    TResult? Function(dynamic message, dynamic error, dynamic response)?
        request,
    TResult? Function(dynamic message, dynamic error, dynamic response)?
        permission,
    TResult? Function(dynamic message, dynamic error, dynamic response)? parser,
    TResult? Function(dynamic message, dynamic error, dynamic response)? other,
  }) {
    return request?.call(message, error, response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic message, dynamic error, dynamic response)?
        unauthorized,
    TResult Function(dynamic message, dynamic error, dynamic response)? request,
    TResult Function(dynamic message, dynamic error, dynamic response)?
        permission,
    TResult Function(dynamic message, dynamic error, dynamic response)? parser,
    TResult Function(dynamic message, dynamic error, dynamic response)? other,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(message, error, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(NetworkFailureException value) request,
    required TResult Function(PermissionNotGrantedException value) permission,
    required TResult Function(ParserException value) parser,
    required TResult Function(OtherException value) other,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(NetworkFailureException value)? request,
    TResult? Function(PermissionNotGrantedException value)? permission,
    TResult? Function(ParserException value)? parser,
    TResult? Function(OtherException value)? other,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(NetworkFailureException value)? request,
    TResult Function(PermissionNotGrantedException value)? permission,
    TResult Function(ParserException value)? parser,
    TResult Function(OtherException value)? other,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }
}

abstract class NetworkFailureException implements Failure, Exception {
  factory NetworkFailureException(
      {final dynamic message,
      final dynamic error,
      final dynamic response}) = _$NetworkFailureException;

  @override
  dynamic get message;
  @override
  dynamic get error;
  @override
  dynamic get response;
  @override
  @JsonKey(ignore: true)
  _$$NetworkFailureExceptionCopyWith<_$NetworkFailureException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PermissionNotGrantedExceptionCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$PermissionNotGrantedExceptionCopyWith(
          _$PermissionNotGrantedException value,
          $Res Function(_$PermissionNotGrantedException) then) =
      __$$PermissionNotGrantedExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic message, dynamic error, dynamic response});
}

/// @nodoc
class __$$PermissionNotGrantedExceptionCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$PermissionNotGrantedException>
    implements _$$PermissionNotGrantedExceptionCopyWith<$Res> {
  __$$PermissionNotGrantedExceptionCopyWithImpl(
      _$PermissionNotGrantedException _value,
      $Res Function(_$PermissionNotGrantedException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? response = freezed,
  }) {
    return _then(_$PermissionNotGrantedException(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$PermissionNotGrantedException implements PermissionNotGrantedException {
  _$PermissionNotGrantedException({this.message, this.error, this.response});

  @override
  final dynamic message;
  @override
  final dynamic error;
  @override
  final dynamic response;

  @override
  String toString() {
    return 'Failure.permission(message: $message, error: $error, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionNotGrantedException &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionNotGrantedExceptionCopyWith<_$PermissionNotGrantedException>
      get copyWith => __$$PermissionNotGrantedExceptionCopyWithImpl<
          _$PermissionNotGrantedException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic message, dynamic error, dynamic response)
        unauthorized,
    required TResult Function(dynamic message, dynamic error, dynamic response)
        request,
    required TResult Function(dynamic message, dynamic error, dynamic response)
        permission,
    required TResult Function(dynamic message, dynamic error, dynamic response)
        parser,
    required TResult Function(dynamic message, dynamic error, dynamic response)
        other,
  }) {
    return permission(message, error, response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic message, dynamic error, dynamic response)?
        unauthorized,
    TResult? Function(dynamic message, dynamic error, dynamic response)?
        request,
    TResult? Function(dynamic message, dynamic error, dynamic response)?
        permission,
    TResult? Function(dynamic message, dynamic error, dynamic response)? parser,
    TResult? Function(dynamic message, dynamic error, dynamic response)? other,
  }) {
    return permission?.call(message, error, response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic message, dynamic error, dynamic response)?
        unauthorized,
    TResult Function(dynamic message, dynamic error, dynamic response)? request,
    TResult Function(dynamic message, dynamic error, dynamic response)?
        permission,
    TResult Function(dynamic message, dynamic error, dynamic response)? parser,
    TResult Function(dynamic message, dynamic error, dynamic response)? other,
    required TResult orElse(),
  }) {
    if (permission != null) {
      return permission(message, error, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(NetworkFailureException value) request,
    required TResult Function(PermissionNotGrantedException value) permission,
    required TResult Function(ParserException value) parser,
    required TResult Function(OtherException value) other,
  }) {
    return permission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(NetworkFailureException value)? request,
    TResult? Function(PermissionNotGrantedException value)? permission,
    TResult? Function(ParserException value)? parser,
    TResult? Function(OtherException value)? other,
  }) {
    return permission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(NetworkFailureException value)? request,
    TResult Function(PermissionNotGrantedException value)? permission,
    TResult Function(ParserException value)? parser,
    TResult Function(OtherException value)? other,
    required TResult orElse(),
  }) {
    if (permission != null) {
      return permission(this);
    }
    return orElse();
  }
}

abstract class PermissionNotGrantedException implements Failure, Exception {
  factory PermissionNotGrantedException(
      {final dynamic message,
      final dynamic error,
      final dynamic response}) = _$PermissionNotGrantedException;

  @override
  dynamic get message;
  @override
  dynamic get error;
  @override
  dynamic get response;
  @override
  @JsonKey(ignore: true)
  _$$PermissionNotGrantedExceptionCopyWith<_$PermissionNotGrantedException>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParserExceptionCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ParserExceptionCopyWith(
          _$ParserException value, $Res Function(_$ParserException) then) =
      __$$ParserExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic message, dynamic error, dynamic response});
}

/// @nodoc
class __$$ParserExceptionCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ParserException>
    implements _$$ParserExceptionCopyWith<$Res> {
  __$$ParserExceptionCopyWithImpl(
      _$ParserException _value, $Res Function(_$ParserException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? response = freezed,
  }) {
    return _then(_$ParserException(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ParserException implements ParserException {
  _$ParserException({this.message, this.error, this.response});

  @override
  final dynamic message;
  @override
  final dynamic error;
  @override
  final dynamic response;

  @override
  String toString() {
    return 'Failure.parser(message: $message, error: $error, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParserException &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParserExceptionCopyWith<_$ParserException> get copyWith =>
      __$$ParserExceptionCopyWithImpl<_$ParserException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic message, dynamic error, dynamic response)
        unauthorized,
    required TResult Function(dynamic message, dynamic error, dynamic response)
        request,
    required TResult Function(dynamic message, dynamic error, dynamic response)
        permission,
    required TResult Function(dynamic message, dynamic error, dynamic response)
        parser,
    required TResult Function(dynamic message, dynamic error, dynamic response)
        other,
  }) {
    return parser(message, error, response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic message, dynamic error, dynamic response)?
        unauthorized,
    TResult? Function(dynamic message, dynamic error, dynamic response)?
        request,
    TResult? Function(dynamic message, dynamic error, dynamic response)?
        permission,
    TResult? Function(dynamic message, dynamic error, dynamic response)? parser,
    TResult? Function(dynamic message, dynamic error, dynamic response)? other,
  }) {
    return parser?.call(message, error, response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic message, dynamic error, dynamic response)?
        unauthorized,
    TResult Function(dynamic message, dynamic error, dynamic response)? request,
    TResult Function(dynamic message, dynamic error, dynamic response)?
        permission,
    TResult Function(dynamic message, dynamic error, dynamic response)? parser,
    TResult Function(dynamic message, dynamic error, dynamic response)? other,
    required TResult orElse(),
  }) {
    if (parser != null) {
      return parser(message, error, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(NetworkFailureException value) request,
    required TResult Function(PermissionNotGrantedException value) permission,
    required TResult Function(ParserException value) parser,
    required TResult Function(OtherException value) other,
  }) {
    return parser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(NetworkFailureException value)? request,
    TResult? Function(PermissionNotGrantedException value)? permission,
    TResult? Function(ParserException value)? parser,
    TResult? Function(OtherException value)? other,
  }) {
    return parser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(NetworkFailureException value)? request,
    TResult Function(PermissionNotGrantedException value)? permission,
    TResult Function(ParserException value)? parser,
    TResult Function(OtherException value)? other,
    required TResult orElse(),
  }) {
    if (parser != null) {
      return parser(this);
    }
    return orElse();
  }
}

abstract class ParserException implements Failure, Exception {
  factory ParserException(
      {final dynamic message,
      final dynamic error,
      final dynamic response}) = _$ParserException;

  @override
  dynamic get message;
  @override
  dynamic get error;
  @override
  dynamic get response;
  @override
  @JsonKey(ignore: true)
  _$$ParserExceptionCopyWith<_$ParserException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtherExceptionCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$OtherExceptionCopyWith(
          _$OtherException value, $Res Function(_$OtherException) then) =
      __$$OtherExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic message, dynamic error, dynamic response});
}

/// @nodoc
class __$$OtherExceptionCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$OtherException>
    implements _$$OtherExceptionCopyWith<$Res> {
  __$$OtherExceptionCopyWithImpl(
      _$OtherException _value, $Res Function(_$OtherException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? response = freezed,
  }) {
    return _then(_$OtherException(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$OtherException implements OtherException {
  _$OtherException({this.message, this.error, this.response});

  @override
  final dynamic message;
  @override
  final dynamic error;
  @override
  final dynamic response;

  @override
  String toString() {
    return 'Failure.other(message: $message, error: $error, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherException &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherExceptionCopyWith<_$OtherException> get copyWith =>
      __$$OtherExceptionCopyWithImpl<_$OtherException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic message, dynamic error, dynamic response)
        unauthorized,
    required TResult Function(dynamic message, dynamic error, dynamic response)
        request,
    required TResult Function(dynamic message, dynamic error, dynamic response)
        permission,
    required TResult Function(dynamic message, dynamic error, dynamic response)
        parser,
    required TResult Function(dynamic message, dynamic error, dynamic response)
        other,
  }) {
    return other(message, error, response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic message, dynamic error, dynamic response)?
        unauthorized,
    TResult? Function(dynamic message, dynamic error, dynamic response)?
        request,
    TResult? Function(dynamic message, dynamic error, dynamic response)?
        permission,
    TResult? Function(dynamic message, dynamic error, dynamic response)? parser,
    TResult? Function(dynamic message, dynamic error, dynamic response)? other,
  }) {
    return other?.call(message, error, response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic message, dynamic error, dynamic response)?
        unauthorized,
    TResult Function(dynamic message, dynamic error, dynamic response)? request,
    TResult Function(dynamic message, dynamic error, dynamic response)?
        permission,
    TResult Function(dynamic message, dynamic error, dynamic response)? parser,
    TResult Function(dynamic message, dynamic error, dynamic response)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(message, error, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(NetworkFailureException value) request,
    required TResult Function(PermissionNotGrantedException value) permission,
    required TResult Function(ParserException value) parser,
    required TResult Function(OtherException value) other,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(NetworkFailureException value)? request,
    TResult? Function(PermissionNotGrantedException value)? permission,
    TResult? Function(ParserException value)? parser,
    TResult? Function(OtherException value)? other,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(NetworkFailureException value)? request,
    TResult Function(PermissionNotGrantedException value)? permission,
    TResult Function(ParserException value)? parser,
    TResult Function(OtherException value)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }
}

abstract class OtherException implements Failure, Exception {
  factory OtherException(
      {final dynamic message,
      final dynamic error,
      final dynamic response}) = _$OtherException;

  @override
  dynamic get message;
  @override
  dynamic get error;
  @override
  dynamic get response;
  @override
  @JsonKey(ignore: true)
  _$$OtherExceptionCopyWith<_$OtherException> get copyWith =>
      throw _privateConstructorUsedError;
}
