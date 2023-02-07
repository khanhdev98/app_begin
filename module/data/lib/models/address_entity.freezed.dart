// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressEntity _$AddressEntityFromJson(Map<String, dynamic> json) {
  return _AddressEntity.fromJson(json);
}

/// @nodoc
mixin _$AddressEntity {
  String? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressEntityCopyWith<AddressEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressEntityCopyWith<$Res> {
  factory $AddressEntityCopyWith(
          AddressEntity value, $Res Function(AddressEntity) then) =
      _$AddressEntityCopyWithImpl<$Res, AddressEntity>;
  @useResult
  $Res call({String? address});
}

/// @nodoc
class _$AddressEntityCopyWithImpl<$Res, $Val extends AddressEntity>
    implements $AddressEntityCopyWith<$Res> {
  _$AddressEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressEntityCopyWith<$Res>
    implements $AddressEntityCopyWith<$Res> {
  factory _$$_AddressEntityCopyWith(
          _$_AddressEntity value, $Res Function(_$_AddressEntity) then) =
      __$$_AddressEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? address});
}

/// @nodoc
class __$$_AddressEntityCopyWithImpl<$Res>
    extends _$AddressEntityCopyWithImpl<$Res, _$_AddressEntity>
    implements _$$_AddressEntityCopyWith<$Res> {
  __$$_AddressEntityCopyWithImpl(
      _$_AddressEntity _value, $Res Function(_$_AddressEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_$_AddressEntity(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressEntity implements _AddressEntity {
  const _$_AddressEntity({this.address});

  factory _$_AddressEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AddressEntityFromJson(json);

  @override
  final String? address;

  @override
  String toString() {
    return 'AddressEntity(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressEntity &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressEntityCopyWith<_$_AddressEntity> get copyWith =>
      __$$_AddressEntityCopyWithImpl<_$_AddressEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressEntityToJson(
      this,
    );
  }
}

abstract class _AddressEntity implements AddressEntity {
  const factory _AddressEntity({final String? address}) = _$_AddressEntity;

  factory _AddressEntity.fromJson(Map<String, dynamic> json) =
      _$_AddressEntity.fromJson;

  @override
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$_AddressEntityCopyWith<_$_AddressEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
