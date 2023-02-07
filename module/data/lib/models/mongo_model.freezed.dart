// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mongo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatusEntity _$StatusEntityFromJson(Map<String, dynamic> json) {
  return _StatusEntity.fromJson(json);
}

/// @nodoc
mixin _$StatusEntity {
  bool? get success => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  dynamic get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusEntityCopyWith<StatusEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusEntityCopyWith<$Res> {
  factory $StatusEntityCopyWith(
          StatusEntity value, $Res Function(StatusEntity) then) =
      _$StatusEntityCopyWithImpl<$Res, StatusEntity>;
  @useResult
  $Res call({bool? success, int? code, dynamic errors});
}

/// @nodoc
class _$StatusEntityCopyWithImpl<$Res, $Val extends StatusEntity>
    implements $StatusEntityCopyWith<$Res> {
  _$StatusEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? code = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatusEntityCopyWith<$Res>
    implements $StatusEntityCopyWith<$Res> {
  factory _$$_StatusEntityCopyWith(
          _$_StatusEntity value, $Res Function(_$_StatusEntity) then) =
      __$$_StatusEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, int? code, dynamic errors});
}

/// @nodoc
class __$$_StatusEntityCopyWithImpl<$Res>
    extends _$StatusEntityCopyWithImpl<$Res, _$_StatusEntity>
    implements _$$_StatusEntityCopyWith<$Res> {
  __$$_StatusEntityCopyWithImpl(
      _$_StatusEntity _value, $Res Function(_$_StatusEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? code = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$_StatusEntity(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatusEntity implements _StatusEntity {
  _$_StatusEntity({this.success, this.code, this.errors});

  factory _$_StatusEntity.fromJson(Map<String, dynamic> json) =>
      _$$_StatusEntityFromJson(json);

  @override
  final bool? success;
  @override
  final int? code;
  @override
  final dynamic errors;

  @override
  String toString() {
    return 'StatusEntity(success: $success, code: $code, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusEntity &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, code, const DeepCollectionEquality().hash(errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatusEntityCopyWith<_$_StatusEntity> get copyWith =>
      __$$_StatusEntityCopyWithImpl<_$_StatusEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusEntityToJson(
      this,
    );
  }
}

abstract class _StatusEntity implements StatusEntity {
  factory _StatusEntity(
      {final bool? success,
      final int? code,
      final dynamic errors}) = _$_StatusEntity;

  factory _StatusEntity.fromJson(Map<String, dynamic> json) =
      _$_StatusEntity.fromJson;

  @override
  bool? get success;
  @override
  int? get code;
  @override
  dynamic get errors;
  @override
  @JsonKey(ignore: true)
  _$$_StatusEntityCopyWith<_$_StatusEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MongoEntity<T> {
  StatusEntity? get status => throw _privateConstructorUsedError;
  Object? get elements => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StatusEntity? status, List<T?>? elements) list,
    required TResult Function(StatusEntity? status, Map<String, T?>? elements)
        map,
    required TResult Function(StatusEntity? status, T? elements) single,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StatusEntity? status, List<T?>? elements)? list,
    TResult? Function(StatusEntity? status, Map<String, T?>? elements)? map,
    TResult? Function(StatusEntity? status, T? elements)? single,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StatusEntity? status, List<T?>? elements)? list,
    TResult Function(StatusEntity? status, Map<String, T?>? elements)? map,
    TResult Function(StatusEntity? status, T? elements)? single,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MongoEntityList<T> value) list,
    required TResult Function(MongoEntityMap<T> value) map,
    required TResult Function(MongoEntitySingle<T> value) single,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MongoEntityList<T> value)? list,
    TResult? Function(MongoEntityMap<T> value)? map,
    TResult? Function(MongoEntitySingle<T> value)? single,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MongoEntityList<T> value)? list,
    TResult Function(MongoEntityMap<T> value)? map,
    TResult Function(MongoEntitySingle<T> value)? single,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MongoEntityCopyWith<T, MongoEntity<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MongoEntityCopyWith<T, $Res> {
  factory $MongoEntityCopyWith(
          MongoEntity<T> value, $Res Function(MongoEntity<T>) then) =
      _$MongoEntityCopyWithImpl<T, $Res, MongoEntity<T>>;
  @useResult
  $Res call({StatusEntity? status});

  $StatusEntityCopyWith<$Res>? get status;
}

/// @nodoc
class _$MongoEntityCopyWithImpl<T, $Res, $Val extends MongoEntity<T>>
    implements $MongoEntityCopyWith<T, $Res> {
  _$MongoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusEntityCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusEntityCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MongoEntityListCopyWith<T, $Res>
    implements $MongoEntityCopyWith<T, $Res> {
  factory _$$MongoEntityListCopyWith(_$MongoEntityList<T> value,
          $Res Function(_$MongoEntityList<T>) then) =
      __$$MongoEntityListCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({StatusEntity? status, List<T?>? elements});

  @override
  $StatusEntityCopyWith<$Res>? get status;
}

/// @nodoc
class __$$MongoEntityListCopyWithImpl<T, $Res>
    extends _$MongoEntityCopyWithImpl<T, $Res, _$MongoEntityList<T>>
    implements _$$MongoEntityListCopyWith<T, $Res> {
  __$$MongoEntityListCopyWithImpl(
      _$MongoEntityList<T> _value, $Res Function(_$MongoEntityList<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? elements = freezed,
  }) {
    return _then(_$MongoEntityList<T>(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusEntity?,
      elements: freezed == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<T?>?,
    ));
  }
}

/// @nodoc

class _$MongoEntityList<T> implements MongoEntityList<T> {
  _$MongoEntityList({this.status, final List<T?>? elements})
      : _elements = elements;

  @override
  final StatusEntity? status;
  final List<T?>? _elements;
  @override
  List<T?>? get elements {
    final value = _elements;
    if (value == null) return null;
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MongoEntity<$T>.list(status: $status, elements: $elements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MongoEntityList<T> &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._elements, _elements));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_elements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MongoEntityListCopyWith<T, _$MongoEntityList<T>> get copyWith =>
      __$$MongoEntityListCopyWithImpl<T, _$MongoEntityList<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StatusEntity? status, List<T?>? elements) list,
    required TResult Function(StatusEntity? status, Map<String, T?>? elements)
        map,
    required TResult Function(StatusEntity? status, T? elements) single,
  }) {
    return list(status, elements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StatusEntity? status, List<T?>? elements)? list,
    TResult? Function(StatusEntity? status, Map<String, T?>? elements)? map,
    TResult? Function(StatusEntity? status, T? elements)? single,
  }) {
    return list?.call(status, elements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StatusEntity? status, List<T?>? elements)? list,
    TResult Function(StatusEntity? status, Map<String, T?>? elements)? map,
    TResult Function(StatusEntity? status, T? elements)? single,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(status, elements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MongoEntityList<T> value) list,
    required TResult Function(MongoEntityMap<T> value) map,
    required TResult Function(MongoEntitySingle<T> value) single,
  }) {
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MongoEntityList<T> value)? list,
    TResult? Function(MongoEntityMap<T> value)? map,
    TResult? Function(MongoEntitySingle<T> value)? single,
  }) {
    return list?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MongoEntityList<T> value)? list,
    TResult Function(MongoEntityMap<T> value)? map,
    TResult Function(MongoEntitySingle<T> value)? single,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(this);
    }
    return orElse();
  }
}

abstract class MongoEntityList<T> implements MongoEntity<T> {
  factory MongoEntityList(
      {final StatusEntity? status,
      final List<T?>? elements}) = _$MongoEntityList<T>;

  @override
  StatusEntity? get status;
  @override
  List<T?>? get elements;
  @override
  @JsonKey(ignore: true)
  _$$MongoEntityListCopyWith<T, _$MongoEntityList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MongoEntityMapCopyWith<T, $Res>
    implements $MongoEntityCopyWith<T, $Res> {
  factory _$$MongoEntityMapCopyWith(
          _$MongoEntityMap<T> value, $Res Function(_$MongoEntityMap<T>) then) =
      __$$MongoEntityMapCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({StatusEntity? status, Map<String, T?>? elements});

  @override
  $StatusEntityCopyWith<$Res>? get status;
}

/// @nodoc
class __$$MongoEntityMapCopyWithImpl<T, $Res>
    extends _$MongoEntityCopyWithImpl<T, $Res, _$MongoEntityMap<T>>
    implements _$$MongoEntityMapCopyWith<T, $Res> {
  __$$MongoEntityMapCopyWithImpl(
      _$MongoEntityMap<T> _value, $Res Function(_$MongoEntityMap<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? elements = freezed,
  }) {
    return _then(_$MongoEntityMap<T>(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusEntity?,
      elements: freezed == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as Map<String, T?>?,
    ));
  }
}

/// @nodoc

class _$MongoEntityMap<T> implements MongoEntityMap<T> {
  _$MongoEntityMap({this.status, final Map<String, T?>? elements})
      : _elements = elements;

  @override
  final StatusEntity? status;
  final Map<String, T?>? _elements;
  @override
  Map<String, T?>? get elements {
    final value = _elements;
    if (value == null) return null;
    if (_elements is EqualUnmodifiableMapView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MongoEntity<$T>.map(status: $status, elements: $elements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MongoEntityMap<T> &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._elements, _elements));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_elements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MongoEntityMapCopyWith<T, _$MongoEntityMap<T>> get copyWith =>
      __$$MongoEntityMapCopyWithImpl<T, _$MongoEntityMap<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StatusEntity? status, List<T?>? elements) list,
    required TResult Function(StatusEntity? status, Map<String, T?>? elements)
        map,
    required TResult Function(StatusEntity? status, T? elements) single,
  }) {
    return map(status, elements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StatusEntity? status, List<T?>? elements)? list,
    TResult? Function(StatusEntity? status, Map<String, T?>? elements)? map,
    TResult? Function(StatusEntity? status, T? elements)? single,
  }) {
    return map?.call(status, elements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StatusEntity? status, List<T?>? elements)? list,
    TResult Function(StatusEntity? status, Map<String, T?>? elements)? map,
    TResult Function(StatusEntity? status, T? elements)? single,
    required TResult orElse(),
  }) {
    if (map != null) {
      return map(status, elements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MongoEntityList<T> value) list,
    required TResult Function(MongoEntityMap<T> value) map,
    required TResult Function(MongoEntitySingle<T> value) single,
  }) {
    return map(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MongoEntityList<T> value)? list,
    TResult? Function(MongoEntityMap<T> value)? map,
    TResult? Function(MongoEntitySingle<T> value)? single,
  }) {
    return map?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MongoEntityList<T> value)? list,
    TResult Function(MongoEntityMap<T> value)? map,
    TResult Function(MongoEntitySingle<T> value)? single,
    required TResult orElse(),
  }) {
    if (map != null) {
      return map(this);
    }
    return orElse();
  }
}

abstract class MongoEntityMap<T> implements MongoEntity<T> {
  factory MongoEntityMap(
      {final StatusEntity? status,
      final Map<String, T?>? elements}) = _$MongoEntityMap<T>;

  @override
  StatusEntity? get status;
  @override
  Map<String, T?>? get elements;
  @override
  @JsonKey(ignore: true)
  _$$MongoEntityMapCopyWith<T, _$MongoEntityMap<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MongoEntitySingleCopyWith<T, $Res>
    implements $MongoEntityCopyWith<T, $Res> {
  factory _$$MongoEntitySingleCopyWith(_$MongoEntitySingle<T> value,
          $Res Function(_$MongoEntitySingle<T>) then) =
      __$$MongoEntitySingleCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({StatusEntity? status, T? elements});

  @override
  $StatusEntityCopyWith<$Res>? get status;
}

/// @nodoc
class __$$MongoEntitySingleCopyWithImpl<T, $Res>
    extends _$MongoEntityCopyWithImpl<T, $Res, _$MongoEntitySingle<T>>
    implements _$$MongoEntitySingleCopyWith<T, $Res> {
  __$$MongoEntitySingleCopyWithImpl(_$MongoEntitySingle<T> _value,
      $Res Function(_$MongoEntitySingle<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? elements = freezed,
  }) {
    return _then(_$MongoEntitySingle<T>(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusEntity?,
      elements: freezed == elements
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$MongoEntitySingle<T> implements MongoEntitySingle<T> {
  _$MongoEntitySingle({this.status, this.elements});

  @override
  final StatusEntity? status;
  @override
  final T? elements;

  @override
  String toString() {
    return 'MongoEntity<$T>.single(status: $status, elements: $elements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MongoEntitySingle<T> &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.elements, elements));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(elements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MongoEntitySingleCopyWith<T, _$MongoEntitySingle<T>> get copyWith =>
      __$$MongoEntitySingleCopyWithImpl<T, _$MongoEntitySingle<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StatusEntity? status, List<T?>? elements) list,
    required TResult Function(StatusEntity? status, Map<String, T?>? elements)
        map,
    required TResult Function(StatusEntity? status, T? elements) single,
  }) {
    return single(status, elements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StatusEntity? status, List<T?>? elements)? list,
    TResult? Function(StatusEntity? status, Map<String, T?>? elements)? map,
    TResult? Function(StatusEntity? status, T? elements)? single,
  }) {
    return single?.call(status, elements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StatusEntity? status, List<T?>? elements)? list,
    TResult Function(StatusEntity? status, Map<String, T?>? elements)? map,
    TResult Function(StatusEntity? status, T? elements)? single,
    required TResult orElse(),
  }) {
    if (single != null) {
      return single(status, elements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MongoEntityList<T> value) list,
    required TResult Function(MongoEntityMap<T> value) map,
    required TResult Function(MongoEntitySingle<T> value) single,
  }) {
    return single(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MongoEntityList<T> value)? list,
    TResult? Function(MongoEntityMap<T> value)? map,
    TResult? Function(MongoEntitySingle<T> value)? single,
  }) {
    return single?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MongoEntityList<T> value)? list,
    TResult Function(MongoEntityMap<T> value)? map,
    TResult Function(MongoEntitySingle<T> value)? single,
    required TResult orElse(),
  }) {
    if (single != null) {
      return single(this);
    }
    return orElse();
  }
}

abstract class MongoEntitySingle<T> implements MongoEntity<T> {
  factory MongoEntitySingle({final StatusEntity? status, final T? elements}) =
      _$MongoEntitySingle<T>;

  @override
  StatusEntity? get status;
  @override
  T? get elements;
  @override
  @JsonKey(ignore: true)
  _$$MongoEntitySingleCopyWith<T, _$MongoEntitySingle<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
