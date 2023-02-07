// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) {
  return _UserEntity.fromJson(json);
}

/// @nodoc
mixin _$UserEntity {
  @JsonKey(name: 'pn300')
  String? get halokiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'pn100')
  String? get userIdToken => throw _privateConstructorUsedError;
  String? get emailOrPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'nv206')
  String? get fullName => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'nv203')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'nv204')
  String? get lastName =>
      throw _privateConstructorUsedError; //DateTime? dateOfBirth,
//String? streetAddress,
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'nv207')
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'nv209')
  String? get emailAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'nn303')
  int? get verify => throw _privateConstructorUsedError;
  String? get linkImageFrontIdCard => throw _privateConstructorUsedError;
  String? get linkImageBackIdCard => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  StatusKYC? get statusKYC => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  int? get timeWaiting => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'nd204')
  String? get birthDay => throw _privateConstructorUsedError;
  AddressEntity? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEntityCopyWith<UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) then) =
      _$UserEntityCopyWithImpl<$Res, UserEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'pn300') String? halokiId,
      @JsonKey(name: 'pn100') String? userIdToken,
      String? emailOrPhone,
      @JsonKey(name: 'nv206') String? fullName,
      String? avatar,
      @JsonKey(name: 'nv203') String? firstName,
      @JsonKey(name: 'nv204') String? lastName,
      String? phoneNumber,
      @JsonKey(name: 'nv207') String? gender,
      @JsonKey(name: 'nv209') String? emailAddress,
      @JsonKey(name: 'nn303') int? verify,
      String? linkImageFrontIdCard,
      String? linkImageBackIdCard,
      @JsonKey(name: 'status') StatusKYC? statusKYC,
      @JsonKey(name: 'value') int? timeWaiting,
      String? country,
      @JsonKey(name: 'nd204') String? birthDay,
      AddressEntity? address});

  $StatusKYCCopyWith<$Res>? get statusKYC;
  $AddressEntityCopyWith<$Res>? get address;
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res, $Val extends UserEntity>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? halokiId = freezed,
    Object? userIdToken = freezed,
    Object? emailOrPhone = freezed,
    Object? fullName = freezed,
    Object? avatar = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
    Object? gender = freezed,
    Object? emailAddress = freezed,
    Object? verify = freezed,
    Object? linkImageFrontIdCard = freezed,
    Object? linkImageBackIdCard = freezed,
    Object? statusKYC = freezed,
    Object? timeWaiting = freezed,
    Object? country = freezed,
    Object? birthDay = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      halokiId: freezed == halokiId
          ? _value.halokiId
          : halokiId // ignore: cast_nullable_to_non_nullable
              as String?,
      userIdToken: freezed == userIdToken
          ? _value.userIdToken
          : userIdToken // ignore: cast_nullable_to_non_nullable
              as String?,
      emailOrPhone: freezed == emailOrPhone
          ? _value.emailOrPhone
          : emailOrPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      emailAddress: freezed == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      verify: freezed == verify
          ? _value.verify
          : verify // ignore: cast_nullable_to_non_nullable
              as int?,
      linkImageFrontIdCard: freezed == linkImageFrontIdCard
          ? _value.linkImageFrontIdCard
          : linkImageFrontIdCard // ignore: cast_nullable_to_non_nullable
              as String?,
      linkImageBackIdCard: freezed == linkImageBackIdCard
          ? _value.linkImageBackIdCard
          : linkImageBackIdCard // ignore: cast_nullable_to_non_nullable
              as String?,
      statusKYC: freezed == statusKYC
          ? _value.statusKYC
          : statusKYC // ignore: cast_nullable_to_non_nullable
              as StatusKYC?,
      timeWaiting: freezed == timeWaiting
          ? _value.timeWaiting
          : timeWaiting // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDay: freezed == birthDay
          ? _value.birthDay
          : birthDay // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusKYCCopyWith<$Res>? get statusKYC {
    if (_value.statusKYC == null) {
      return null;
    }

    return $StatusKYCCopyWith<$Res>(_value.statusKYC!, (value) {
      return _then(_value.copyWith(statusKYC: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressEntityCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressEntityCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserEntityCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory _$$_UserEntityCopyWith(
          _$_UserEntity value, $Res Function(_$_UserEntity) then) =
      __$$_UserEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'pn300') String? halokiId,
      @JsonKey(name: 'pn100') String? userIdToken,
      String? emailOrPhone,
      @JsonKey(name: 'nv206') String? fullName,
      String? avatar,
      @JsonKey(name: 'nv203') String? firstName,
      @JsonKey(name: 'nv204') String? lastName,
      String? phoneNumber,
      @JsonKey(name: 'nv207') String? gender,
      @JsonKey(name: 'nv209') String? emailAddress,
      @JsonKey(name: 'nn303') int? verify,
      String? linkImageFrontIdCard,
      String? linkImageBackIdCard,
      @JsonKey(name: 'status') StatusKYC? statusKYC,
      @JsonKey(name: 'value') int? timeWaiting,
      String? country,
      @JsonKey(name: 'nd204') String? birthDay,
      AddressEntity? address});

  @override
  $StatusKYCCopyWith<$Res>? get statusKYC;
  @override
  $AddressEntityCopyWith<$Res>? get address;
}

/// @nodoc
class __$$_UserEntityCopyWithImpl<$Res>
    extends _$UserEntityCopyWithImpl<$Res, _$_UserEntity>
    implements _$$_UserEntityCopyWith<$Res> {
  __$$_UserEntityCopyWithImpl(
      _$_UserEntity _value, $Res Function(_$_UserEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? halokiId = freezed,
    Object? userIdToken = freezed,
    Object? emailOrPhone = freezed,
    Object? fullName = freezed,
    Object? avatar = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
    Object? gender = freezed,
    Object? emailAddress = freezed,
    Object? verify = freezed,
    Object? linkImageFrontIdCard = freezed,
    Object? linkImageBackIdCard = freezed,
    Object? statusKYC = freezed,
    Object? timeWaiting = freezed,
    Object? country = freezed,
    Object? birthDay = freezed,
    Object? address = freezed,
  }) {
    return _then(_$_UserEntity(
      halokiId: freezed == halokiId
          ? _value.halokiId
          : halokiId // ignore: cast_nullable_to_non_nullable
              as String?,
      userIdToken: freezed == userIdToken
          ? _value.userIdToken
          : userIdToken // ignore: cast_nullable_to_non_nullable
              as String?,
      emailOrPhone: freezed == emailOrPhone
          ? _value.emailOrPhone
          : emailOrPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      emailAddress: freezed == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      verify: freezed == verify
          ? _value.verify
          : verify // ignore: cast_nullable_to_non_nullable
              as int?,
      linkImageFrontIdCard: freezed == linkImageFrontIdCard
          ? _value.linkImageFrontIdCard
          : linkImageFrontIdCard // ignore: cast_nullable_to_non_nullable
              as String?,
      linkImageBackIdCard: freezed == linkImageBackIdCard
          ? _value.linkImageBackIdCard
          : linkImageBackIdCard // ignore: cast_nullable_to_non_nullable
              as String?,
      statusKYC: freezed == statusKYC
          ? _value.statusKYC
          : statusKYC // ignore: cast_nullable_to_non_nullable
              as StatusKYC?,
      timeWaiting: freezed == timeWaiting
          ? _value.timeWaiting
          : timeWaiting // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDay: freezed == birthDay
          ? _value.birthDay
          : birthDay // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserEntity extends _UserEntity {
  _$_UserEntity(
      {@JsonKey(name: 'pn300') this.halokiId,
      @JsonKey(name: 'pn100') this.userIdToken,
      this.emailOrPhone,
      @JsonKey(name: 'nv206') this.fullName,
      this.avatar,
      @JsonKey(name: 'nv203') this.firstName,
      @JsonKey(name: 'nv204') this.lastName,
      this.phoneNumber,
      @JsonKey(name: 'nv207') this.gender,
      @JsonKey(name: 'nv209') this.emailAddress,
      @JsonKey(name: 'nn303') this.verify,
      this.linkImageFrontIdCard,
      this.linkImageBackIdCard,
      @JsonKey(name: 'status') this.statusKYC,
      @JsonKey(name: 'value') this.timeWaiting,
      this.country,
      @JsonKey(name: 'nd204') this.birthDay,
      this.address})
      : super._();

  factory _$_UserEntity.fromJson(Map<String, dynamic> json) =>
      _$$_UserEntityFromJson(json);

  @override
  @JsonKey(name: 'pn300')
  final String? halokiId;
  @override
  @JsonKey(name: 'pn100')
  final String? userIdToken;
  @override
  final String? emailOrPhone;
  @override
  @JsonKey(name: 'nv206')
  final String? fullName;
  @override
  final String? avatar;
  @override
  @JsonKey(name: 'nv203')
  final String? firstName;
  @override
  @JsonKey(name: 'nv204')
  final String? lastName;
//DateTime? dateOfBirth,
//String? streetAddress,
  @override
  final String? phoneNumber;
  @override
  @JsonKey(name: 'nv207')
  final String? gender;
  @override
  @JsonKey(name: 'nv209')
  final String? emailAddress;
  @override
  @JsonKey(name: 'nn303')
  final int? verify;
  @override
  final String? linkImageFrontIdCard;
  @override
  final String? linkImageBackIdCard;
  @override
  @JsonKey(name: 'status')
  final StatusKYC? statusKYC;
  @override
  @JsonKey(name: 'value')
  final int? timeWaiting;
  @override
  final String? country;
  @override
  @JsonKey(name: 'nd204')
  final String? birthDay;
  @override
  final AddressEntity? address;

  @override
  String toString() {
    return 'UserEntity(halokiId: $halokiId, userIdToken: $userIdToken, emailOrPhone: $emailOrPhone, fullName: $fullName, avatar: $avatar, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, gender: $gender, emailAddress: $emailAddress, verify: $verify, linkImageFrontIdCard: $linkImageFrontIdCard, linkImageBackIdCard: $linkImageBackIdCard, statusKYC: $statusKYC, timeWaiting: $timeWaiting, country: $country, birthDay: $birthDay, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserEntity &&
            (identical(other.halokiId, halokiId) ||
                other.halokiId == halokiId) &&
            (identical(other.userIdToken, userIdToken) ||
                other.userIdToken == userIdToken) &&
            (identical(other.emailOrPhone, emailOrPhone) ||
                other.emailOrPhone == emailOrPhone) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.verify, verify) || other.verify == verify) &&
            (identical(other.linkImageFrontIdCard, linkImageFrontIdCard) ||
                other.linkImageFrontIdCard == linkImageFrontIdCard) &&
            (identical(other.linkImageBackIdCard, linkImageBackIdCard) ||
                other.linkImageBackIdCard == linkImageBackIdCard) &&
            (identical(other.statusKYC, statusKYC) ||
                other.statusKYC == statusKYC) &&
            (identical(other.timeWaiting, timeWaiting) ||
                other.timeWaiting == timeWaiting) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.birthDay, birthDay) ||
                other.birthDay == birthDay) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      halokiId,
      userIdToken,
      emailOrPhone,
      fullName,
      avatar,
      firstName,
      lastName,
      phoneNumber,
      gender,
      emailAddress,
      verify,
      linkImageFrontIdCard,
      linkImageBackIdCard,
      statusKYC,
      timeWaiting,
      country,
      birthDay,
      address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserEntityCopyWith<_$_UserEntity> get copyWith =>
      __$$_UserEntityCopyWithImpl<_$_UserEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserEntityToJson(
      this,
    );
  }
}

abstract class _UserEntity extends UserEntity {
  factory _UserEntity(
      {@JsonKey(name: 'pn300') final String? halokiId,
      @JsonKey(name: 'pn100') final String? userIdToken,
      final String? emailOrPhone,
      @JsonKey(name: 'nv206') final String? fullName,
      final String? avatar,
      @JsonKey(name: 'nv203') final String? firstName,
      @JsonKey(name: 'nv204') final String? lastName,
      final String? phoneNumber,
      @JsonKey(name: 'nv207') final String? gender,
      @JsonKey(name: 'nv209') final String? emailAddress,
      @JsonKey(name: 'nn303') final int? verify,
      final String? linkImageFrontIdCard,
      final String? linkImageBackIdCard,
      @JsonKey(name: 'status') final StatusKYC? statusKYC,
      @JsonKey(name: 'value') final int? timeWaiting,
      final String? country,
      @JsonKey(name: 'nd204') final String? birthDay,
      final AddressEntity? address}) = _$_UserEntity;
  _UserEntity._() : super._();

  factory _UserEntity.fromJson(Map<String, dynamic> json) =
      _$_UserEntity.fromJson;

  @override
  @JsonKey(name: 'pn300')
  String? get halokiId;
  @override
  @JsonKey(name: 'pn100')
  String? get userIdToken;
  @override
  String? get emailOrPhone;
  @override
  @JsonKey(name: 'nv206')
  String? get fullName;
  @override
  String? get avatar;
  @override
  @JsonKey(name: 'nv203')
  String? get firstName;
  @override
  @JsonKey(name: 'nv204')
  String? get lastName;
  @override //DateTime? dateOfBirth,
//String? streetAddress,
  String? get phoneNumber;
  @override
  @JsonKey(name: 'nv207')
  String? get gender;
  @override
  @JsonKey(name: 'nv209')
  String? get emailAddress;
  @override
  @JsonKey(name: 'nn303')
  int? get verify;
  @override
  String? get linkImageFrontIdCard;
  @override
  String? get linkImageBackIdCard;
  @override
  @JsonKey(name: 'status')
  StatusKYC? get statusKYC;
  @override
  @JsonKey(name: 'value')
  int? get timeWaiting;
  @override
  String? get country;
  @override
  @JsonKey(name: 'nd204')
  String? get birthDay;
  @override
  AddressEntity? get address;
  @override
  @JsonKey(ignore: true)
  _$$_UserEntityCopyWith<_$_UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

AccountType _$AccountTypeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'user':
      return _User.fromJson(json);
    case 'bussiness':
      return _Business.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AccountType',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AccountType {
  int? get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? value) user,
    required TResult Function(int? value) bussiness,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? value)? user,
    TResult? Function(int? value)? bussiness,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? value)? user,
    TResult Function(int? value)? bussiness,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_User value) user,
    required TResult Function(_Business value) bussiness,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_User value)? user,
    TResult? Function(_Business value)? bussiness,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_User value)? user,
    TResult Function(_Business value)? bussiness,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountTypeCopyWith<AccountType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountTypeCopyWith<$Res> {
  factory $AccountTypeCopyWith(
          AccountType value, $Res Function(AccountType) then) =
      _$AccountTypeCopyWithImpl<$Res, AccountType>;
  @useResult
  $Res call({int? value});
}

/// @nodoc
class _$AccountTypeCopyWithImpl<$Res, $Val extends AccountType>
    implements $AccountTypeCopyWith<$Res> {
  _$AccountTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $AccountTypeCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? value});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res>
    extends _$AccountTypeCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_User(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  _$_User([this.value = 0, final String? $type]) : $type = $type ?? 'user';

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @JsonKey()
  final int? value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AccountType.user(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? value) user,
    required TResult Function(int? value) bussiness,
  }) {
    return user(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? value)? user,
    TResult? Function(int? value)? bussiness,
  }) {
    return user?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? value)? user,
    TResult Function(int? value)? bussiness,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_User value) user,
    required TResult Function(_Business value) bussiness,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_User value)? user,
    TResult? Function(_Business value)? bussiness,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_User value)? user,
    TResult Function(_Business value)? bussiness,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements AccountType {
  factory _User([final int? value]) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int? get value;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BusinessCopyWith<$Res>
    implements $AccountTypeCopyWith<$Res> {
  factory _$$_BusinessCopyWith(
          _$_Business value, $Res Function(_$_Business) then) =
      __$$_BusinessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? value});
}

/// @nodoc
class __$$_BusinessCopyWithImpl<$Res>
    extends _$AccountTypeCopyWithImpl<$Res, _$_Business>
    implements _$$_BusinessCopyWith<$Res> {
  __$$_BusinessCopyWithImpl(
      _$_Business _value, $Res Function(_$_Business) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Business(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Business implements _Business {
  _$_Business([this.value = 1, final String? $type])
      : $type = $type ?? 'bussiness';

  factory _$_Business.fromJson(Map<String, dynamic> json) =>
      _$$_BusinessFromJson(json);

  @override
  @JsonKey()
  final int? value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AccountType.bussiness(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Business &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BusinessCopyWith<_$_Business> get copyWith =>
      __$$_BusinessCopyWithImpl<_$_Business>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? value) user,
    required TResult Function(int? value) bussiness,
  }) {
    return bussiness(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? value)? user,
    TResult? Function(int? value)? bussiness,
  }) {
    return bussiness?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? value)? user,
    TResult Function(int? value)? bussiness,
    required TResult orElse(),
  }) {
    if (bussiness != null) {
      return bussiness(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_User value) user,
    required TResult Function(_Business value) bussiness,
  }) {
    return bussiness(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_User value)? user,
    TResult? Function(_Business value)? bussiness,
  }) {
    return bussiness?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_User value)? user,
    TResult Function(_Business value)? bussiness,
    required TResult orElse(),
  }) {
    if (bussiness != null) {
      return bussiness(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusinessToJson(
      this,
    );
  }
}

abstract class _Business implements AccountType {
  factory _Business([final int? value]) = _$_Business;

  factory _Business.fromJson(Map<String, dynamic> json) = _$_Business.fromJson;

  @override
  int? get value;
  @override
  @JsonKey(ignore: true)
  _$$_BusinessCopyWith<_$_Business> get copyWith =>
      throw _privateConstructorUsedError;
}

StatusVerify _$StatusVerifyFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'notYet':
      return _NotYet.fromJson(json);
    case 'verified':
      return _Verified.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'StatusVerify',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$StatusVerify {
  int? get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? value) notYet,
    required TResult Function(int? value) verified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? value)? notYet,
    TResult? Function(int? value)? verified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? value)? notYet,
    TResult Function(int? value)? verified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotYet value) notYet,
    required TResult Function(_Verified value) verified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotYet value)? notYet,
    TResult? Function(_Verified value)? verified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotYet value)? notYet,
    TResult Function(_Verified value)? verified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusVerifyCopyWith<StatusVerify> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusVerifyCopyWith<$Res> {
  factory $StatusVerifyCopyWith(
          StatusVerify value, $Res Function(StatusVerify) then) =
      _$StatusVerifyCopyWithImpl<$Res, StatusVerify>;
  @useResult
  $Res call({int? value});
}

/// @nodoc
class _$StatusVerifyCopyWithImpl<$Res, $Val extends StatusVerify>
    implements $StatusVerifyCopyWith<$Res> {
  _$StatusVerifyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotYetCopyWith<$Res> implements $StatusVerifyCopyWith<$Res> {
  factory _$$_NotYetCopyWith(_$_NotYet value, $Res Function(_$_NotYet) then) =
      __$$_NotYetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? value});
}

/// @nodoc
class __$$_NotYetCopyWithImpl<$Res>
    extends _$StatusVerifyCopyWithImpl<$Res, _$_NotYet>
    implements _$$_NotYetCopyWith<$Res> {
  __$$_NotYetCopyWithImpl(_$_NotYet _value, $Res Function(_$_NotYet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_NotYet(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotYet implements _NotYet {
  _$_NotYet([this.value = 0, final String? $type]) : $type = $type ?? 'notYet';

  factory _$_NotYet.fromJson(Map<String, dynamic> json) =>
      _$$_NotYetFromJson(json);

  @override
  @JsonKey()
  final int? value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'StatusVerify.notYet(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotYet &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotYetCopyWith<_$_NotYet> get copyWith =>
      __$$_NotYetCopyWithImpl<_$_NotYet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? value) notYet,
    required TResult Function(int? value) verified,
  }) {
    return notYet(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? value)? notYet,
    TResult? Function(int? value)? verified,
  }) {
    return notYet?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? value)? notYet,
    TResult Function(int? value)? verified,
    required TResult orElse(),
  }) {
    if (notYet != null) {
      return notYet(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotYet value) notYet,
    required TResult Function(_Verified value) verified,
  }) {
    return notYet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotYet value)? notYet,
    TResult? Function(_Verified value)? verified,
  }) {
    return notYet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotYet value)? notYet,
    TResult Function(_Verified value)? verified,
    required TResult orElse(),
  }) {
    if (notYet != null) {
      return notYet(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotYetToJson(
      this,
    );
  }
}

abstract class _NotYet implements StatusVerify {
  factory _NotYet([final int? value]) = _$_NotYet;

  factory _NotYet.fromJson(Map<String, dynamic> json) = _$_NotYet.fromJson;

  @override
  int? get value;
  @override
  @JsonKey(ignore: true)
  _$$_NotYetCopyWith<_$_NotYet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VerifiedCopyWith<$Res>
    implements $StatusVerifyCopyWith<$Res> {
  factory _$$_VerifiedCopyWith(
          _$_Verified value, $Res Function(_$_Verified) then) =
      __$$_VerifiedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? value});
}

/// @nodoc
class __$$_VerifiedCopyWithImpl<$Res>
    extends _$StatusVerifyCopyWithImpl<$Res, _$_Verified>
    implements _$$_VerifiedCopyWith<$Res> {
  __$$_VerifiedCopyWithImpl(
      _$_Verified _value, $Res Function(_$_Verified) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Verified(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Verified implements _Verified {
  _$_Verified([this.value = 1, final String? $type])
      : $type = $type ?? 'verified';

  factory _$_Verified.fromJson(Map<String, dynamic> json) =>
      _$$_VerifiedFromJson(json);

  @override
  @JsonKey()
  final int? value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'StatusVerify.verified(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Verified &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifiedCopyWith<_$_Verified> get copyWith =>
      __$$_VerifiedCopyWithImpl<_$_Verified>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? value) notYet,
    required TResult Function(int? value) verified,
  }) {
    return verified(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? value)? notYet,
    TResult? Function(int? value)? verified,
  }) {
    return verified?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? value)? notYet,
    TResult Function(int? value)? verified,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotYet value) notYet,
    required TResult Function(_Verified value) verified,
  }) {
    return verified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotYet value)? notYet,
    TResult? Function(_Verified value)? verified,
  }) {
    return verified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotYet value)? notYet,
    TResult Function(_Verified value)? verified,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerifiedToJson(
      this,
    );
  }
}

abstract class _Verified implements StatusVerify {
  factory _Verified([final int? value]) = _$_Verified;

  factory _Verified.fromJson(Map<String, dynamic> json) = _$_Verified.fromJson;

  @override
  int? get value;
  @override
  @JsonKey(ignore: true)
  _$$_VerifiedCopyWith<_$_Verified> get copyWith =>
      throw _privateConstructorUsedError;
}

StatusBlock _$StatusBlockFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'block':
      return _Block.fromJson(json);
    case 'unlock':
      return _Unlock.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'StatusBlock',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$StatusBlock {
  int? get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? value) block,
    required TResult Function(int? value) unlock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? value)? block,
    TResult? Function(int? value)? unlock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? value)? block,
    TResult Function(int? value)? unlock,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Block value) block,
    required TResult Function(_Unlock value) unlock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Block value)? block,
    TResult? Function(_Unlock value)? unlock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Block value)? block,
    TResult Function(_Unlock value)? unlock,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusBlockCopyWith<StatusBlock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusBlockCopyWith<$Res> {
  factory $StatusBlockCopyWith(
          StatusBlock value, $Res Function(StatusBlock) then) =
      _$StatusBlockCopyWithImpl<$Res, StatusBlock>;
  @useResult
  $Res call({int? value});
}

/// @nodoc
class _$StatusBlockCopyWithImpl<$Res, $Val extends StatusBlock>
    implements $StatusBlockCopyWith<$Res> {
  _$StatusBlockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BlockCopyWith<$Res> implements $StatusBlockCopyWith<$Res> {
  factory _$$_BlockCopyWith(_$_Block value, $Res Function(_$_Block) then) =
      __$$_BlockCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? value});
}

/// @nodoc
class __$$_BlockCopyWithImpl<$Res>
    extends _$StatusBlockCopyWithImpl<$Res, _$_Block>
    implements _$$_BlockCopyWith<$Res> {
  __$$_BlockCopyWithImpl(_$_Block _value, $Res Function(_$_Block) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Block(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Block implements _Block {
  _$_Block([this.value = 1, final String? $type]) : $type = $type ?? 'block';

  factory _$_Block.fromJson(Map<String, dynamic> json) =>
      _$$_BlockFromJson(json);

  @override
  @JsonKey()
  final int? value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'StatusBlock.block(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Block &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BlockCopyWith<_$_Block> get copyWith =>
      __$$_BlockCopyWithImpl<_$_Block>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? value) block,
    required TResult Function(int? value) unlock,
  }) {
    return block(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? value)? block,
    TResult? Function(int? value)? unlock,
  }) {
    return block?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? value)? block,
    TResult Function(int? value)? unlock,
    required TResult orElse(),
  }) {
    if (block != null) {
      return block(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Block value) block,
    required TResult Function(_Unlock value) unlock,
  }) {
    return block(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Block value)? block,
    TResult? Function(_Unlock value)? unlock,
  }) {
    return block?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Block value)? block,
    TResult Function(_Unlock value)? unlock,
    required TResult orElse(),
  }) {
    if (block != null) {
      return block(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlockToJson(
      this,
    );
  }
}

abstract class _Block implements StatusBlock {
  factory _Block([final int? value]) = _$_Block;

  factory _Block.fromJson(Map<String, dynamic> json) = _$_Block.fromJson;

  @override
  int? get value;
  @override
  @JsonKey(ignore: true)
  _$$_BlockCopyWith<_$_Block> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnlockCopyWith<$Res> implements $StatusBlockCopyWith<$Res> {
  factory _$$_UnlockCopyWith(_$_Unlock value, $Res Function(_$_Unlock) then) =
      __$$_UnlockCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? value});
}

/// @nodoc
class __$$_UnlockCopyWithImpl<$Res>
    extends _$StatusBlockCopyWithImpl<$Res, _$_Unlock>
    implements _$$_UnlockCopyWith<$Res> {
  __$$_UnlockCopyWithImpl(_$_Unlock _value, $Res Function(_$_Unlock) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Unlock(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Unlock implements _Unlock {
  _$_Unlock([this.value = 0, final String? $type]) : $type = $type ?? 'unlock';

  factory _$_Unlock.fromJson(Map<String, dynamic> json) =>
      _$$_UnlockFromJson(json);

  @override
  @JsonKey()
  final int? value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'StatusBlock.unlock(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unlock &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnlockCopyWith<_$_Unlock> get copyWith =>
      __$$_UnlockCopyWithImpl<_$_Unlock>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? value) block,
    required TResult Function(int? value) unlock,
  }) {
    return unlock(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? value)? block,
    TResult? Function(int? value)? unlock,
  }) {
    return unlock?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? value)? block,
    TResult Function(int? value)? unlock,
    required TResult orElse(),
  }) {
    if (unlock != null) {
      return unlock(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Block value) block,
    required TResult Function(_Unlock value) unlock,
  }) {
    return unlock(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Block value)? block,
    TResult? Function(_Unlock value)? unlock,
  }) {
    return unlock?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Block value)? block,
    TResult Function(_Unlock value)? unlock,
    required TResult orElse(),
  }) {
    if (unlock != null) {
      return unlock(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnlockToJson(
      this,
    );
  }
}

abstract class _Unlock implements StatusBlock {
  factory _Unlock([final int? value]) = _$_Unlock;

  factory _Unlock.fromJson(Map<String, dynamic> json) = _$_Unlock.fromJson;

  @override
  int? get value;
  @override
  @JsonKey(ignore: true)
  _$$_UnlockCopyWith<_$_Unlock> get copyWith =>
      throw _privateConstructorUsedError;
}

StatusKYC _$StatusKYCFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'inProcess':
      return _InProcess.fromJson(json);
    case 'review':
      return _Review.fromJson(json);
    case 'pass':
      return _Pass.fromJson(json);
    case 'fail':
      return _Fail.fromJson(json);
    case 'failRisk':
      return _FailR.fromJson(json);
    case 'cancel':
      return _Cancel.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'StatusKYC',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$StatusKYC {
  @JsonKey(name: 'status')
  String? get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'status') String? value) inProcess,
    required TResult Function(@JsonKey(name: 'status') String? value) review,
    required TResult Function(@JsonKey(name: 'status') String? value) pass,
    required TResult Function(@JsonKey(name: 'status') String? value) fail,
    required TResult Function(@JsonKey(name: 'status') String? value) failRisk,
    required TResult Function(@JsonKey(name: 'status') String? value) cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'status') String? value)? inProcess,
    TResult? Function(@JsonKey(name: 'status') String? value)? review,
    TResult? Function(@JsonKey(name: 'status') String? value)? pass,
    TResult? Function(@JsonKey(name: 'status') String? value)? fail,
    TResult? Function(@JsonKey(name: 'status') String? value)? failRisk,
    TResult? Function(@JsonKey(name: 'status') String? value)? cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'status') String? value)? inProcess,
    TResult Function(@JsonKey(name: 'status') String? value)? review,
    TResult Function(@JsonKey(name: 'status') String? value)? pass,
    TResult Function(@JsonKey(name: 'status') String? value)? fail,
    TResult Function(@JsonKey(name: 'status') String? value)? failRisk,
    TResult Function(@JsonKey(name: 'status') String? value)? cancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_Review value) review,
    required TResult Function(_Pass value) pass,
    required TResult Function(_Fail value) fail,
    required TResult Function(_FailR value) failRisk,
    required TResult Function(_Cancel value) cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_Review value)? review,
    TResult? Function(_Pass value)? pass,
    TResult? Function(_Fail value)? fail,
    TResult? Function(_FailR value)? failRisk,
    TResult? Function(_Cancel value)? cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_Review value)? review,
    TResult Function(_Pass value)? pass,
    TResult Function(_Fail value)? fail,
    TResult Function(_FailR value)? failRisk,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusKYCCopyWith<StatusKYC> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusKYCCopyWith<$Res> {
  factory $StatusKYCCopyWith(StatusKYC value, $Res Function(StatusKYC) then) =
      _$StatusKYCCopyWithImpl<$Res, StatusKYC>;
  @useResult
  $Res call({@JsonKey(name: 'status') String? value});
}

/// @nodoc
class _$StatusKYCCopyWithImpl<$Res, $Val extends StatusKYC>
    implements $StatusKYCCopyWith<$Res> {
  _$StatusKYCCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InProcessCopyWith<$Res> implements $StatusKYCCopyWith<$Res> {
  factory _$$_InProcessCopyWith(
          _$_InProcess value, $Res Function(_$_InProcess) then) =
      __$$_InProcessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'status') String? value});
}

/// @nodoc
class __$$_InProcessCopyWithImpl<$Res>
    extends _$StatusKYCCopyWithImpl<$Res, _$_InProcess>
    implements _$$_InProcessCopyWith<$Res> {
  __$$_InProcessCopyWithImpl(
      _$_InProcess _value, $Res Function(_$_InProcess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_InProcess(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InProcess implements _InProcess {
  _$_InProcess([@JsonKey(name: 'status') this.value = 'I', final String? $type])
      : $type = $type ?? 'inProcess';

  factory _$_InProcess.fromJson(Map<String, dynamic> json) =>
      _$$_InProcessFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'StatusKYC.inProcess(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InProcess &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InProcessCopyWith<_$_InProcess> get copyWith =>
      __$$_InProcessCopyWithImpl<_$_InProcess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'status') String? value) inProcess,
    required TResult Function(@JsonKey(name: 'status') String? value) review,
    required TResult Function(@JsonKey(name: 'status') String? value) pass,
    required TResult Function(@JsonKey(name: 'status') String? value) fail,
    required TResult Function(@JsonKey(name: 'status') String? value) failRisk,
    required TResult Function(@JsonKey(name: 'status') String? value) cancel,
  }) {
    return inProcess(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'status') String? value)? inProcess,
    TResult? Function(@JsonKey(name: 'status') String? value)? review,
    TResult? Function(@JsonKey(name: 'status') String? value)? pass,
    TResult? Function(@JsonKey(name: 'status') String? value)? fail,
    TResult? Function(@JsonKey(name: 'status') String? value)? failRisk,
    TResult? Function(@JsonKey(name: 'status') String? value)? cancel,
  }) {
    return inProcess?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'status') String? value)? inProcess,
    TResult Function(@JsonKey(name: 'status') String? value)? review,
    TResult Function(@JsonKey(name: 'status') String? value)? pass,
    TResult Function(@JsonKey(name: 'status') String? value)? fail,
    TResult Function(@JsonKey(name: 'status') String? value)? failRisk,
    TResult Function(@JsonKey(name: 'status') String? value)? cancel,
    required TResult orElse(),
  }) {
    if (inProcess != null) {
      return inProcess(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_Review value) review,
    required TResult Function(_Pass value) pass,
    required TResult Function(_Fail value) fail,
    required TResult Function(_FailR value) failRisk,
    required TResult Function(_Cancel value) cancel,
  }) {
    return inProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_Review value)? review,
    TResult? Function(_Pass value)? pass,
    TResult? Function(_Fail value)? fail,
    TResult? Function(_FailR value)? failRisk,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return inProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_Review value)? review,
    TResult Function(_Pass value)? pass,
    TResult Function(_Fail value)? fail,
    TResult Function(_FailR value)? failRisk,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (inProcess != null) {
      return inProcess(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_InProcessToJson(
      this,
    );
  }
}

abstract class _InProcess implements StatusKYC {
  factory _InProcess([@JsonKey(name: 'status') final String? value]) =
      _$_InProcess;

  factory _InProcess.fromJson(Map<String, dynamic> json) =
      _$_InProcess.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_InProcessCopyWith<_$_InProcess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReviewCopyWith<$Res> implements $StatusKYCCopyWith<$Res> {
  factory _$$_ReviewCopyWith(_$_Review value, $Res Function(_$_Review) then) =
      __$$_ReviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'status') String? value});
}

/// @nodoc
class __$$_ReviewCopyWithImpl<$Res>
    extends _$StatusKYCCopyWithImpl<$Res, _$_Review>
    implements _$$_ReviewCopyWith<$Res> {
  __$$_ReviewCopyWithImpl(_$_Review _value, $Res Function(_$_Review) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Review(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Review implements _Review {
  _$_Review([@JsonKey(name: 'status') this.value = 'R', final String? $type])
      : $type = $type ?? 'review';

  factory _$_Review.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'StatusKYC.review(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Review &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      __$$_ReviewCopyWithImpl<_$_Review>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'status') String? value) inProcess,
    required TResult Function(@JsonKey(name: 'status') String? value) review,
    required TResult Function(@JsonKey(name: 'status') String? value) pass,
    required TResult Function(@JsonKey(name: 'status') String? value) fail,
    required TResult Function(@JsonKey(name: 'status') String? value) failRisk,
    required TResult Function(@JsonKey(name: 'status') String? value) cancel,
  }) {
    return review(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'status') String? value)? inProcess,
    TResult? Function(@JsonKey(name: 'status') String? value)? review,
    TResult? Function(@JsonKey(name: 'status') String? value)? pass,
    TResult? Function(@JsonKey(name: 'status') String? value)? fail,
    TResult? Function(@JsonKey(name: 'status') String? value)? failRisk,
    TResult? Function(@JsonKey(name: 'status') String? value)? cancel,
  }) {
    return review?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'status') String? value)? inProcess,
    TResult Function(@JsonKey(name: 'status') String? value)? review,
    TResult Function(@JsonKey(name: 'status') String? value)? pass,
    TResult Function(@JsonKey(name: 'status') String? value)? fail,
    TResult Function(@JsonKey(name: 'status') String? value)? failRisk,
    TResult Function(@JsonKey(name: 'status') String? value)? cancel,
    required TResult orElse(),
  }) {
    if (review != null) {
      return review(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_Review value) review,
    required TResult Function(_Pass value) pass,
    required TResult Function(_Fail value) fail,
    required TResult Function(_FailR value) failRisk,
    required TResult Function(_Cancel value) cancel,
  }) {
    return review(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_Review value)? review,
    TResult? Function(_Pass value)? pass,
    TResult? Function(_Fail value)? fail,
    TResult? Function(_FailR value)? failRisk,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return review?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_Review value)? review,
    TResult Function(_Pass value)? pass,
    TResult Function(_Fail value)? fail,
    TResult Function(_FailR value)? failRisk,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (review != null) {
      return review(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewToJson(
      this,
    );
  }
}

abstract class _Review implements StatusKYC {
  factory _Review([@JsonKey(name: 'status') final String? value]) = _$_Review;

  factory _Review.fromJson(Map<String, dynamic> json) = _$_Review.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PassCopyWith<$Res> implements $StatusKYCCopyWith<$Res> {
  factory _$$_PassCopyWith(_$_Pass value, $Res Function(_$_Pass) then) =
      __$$_PassCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'status') String? value});
}

/// @nodoc
class __$$_PassCopyWithImpl<$Res> extends _$StatusKYCCopyWithImpl<$Res, _$_Pass>
    implements _$$_PassCopyWith<$Res> {
  __$$_PassCopyWithImpl(_$_Pass _value, $Res Function(_$_Pass) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Pass(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pass implements _Pass {
  _$_Pass([@JsonKey(name: 'status') this.value = 'P', final String? $type])
      : $type = $type ?? 'pass';

  factory _$_Pass.fromJson(Map<String, dynamic> json) => _$$_PassFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'StatusKYC.pass(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pass &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PassCopyWith<_$_Pass> get copyWith =>
      __$$_PassCopyWithImpl<_$_Pass>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'status') String? value) inProcess,
    required TResult Function(@JsonKey(name: 'status') String? value) review,
    required TResult Function(@JsonKey(name: 'status') String? value) pass,
    required TResult Function(@JsonKey(name: 'status') String? value) fail,
    required TResult Function(@JsonKey(name: 'status') String? value) failRisk,
    required TResult Function(@JsonKey(name: 'status') String? value) cancel,
  }) {
    return pass(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'status') String? value)? inProcess,
    TResult? Function(@JsonKey(name: 'status') String? value)? review,
    TResult? Function(@JsonKey(name: 'status') String? value)? pass,
    TResult? Function(@JsonKey(name: 'status') String? value)? fail,
    TResult? Function(@JsonKey(name: 'status') String? value)? failRisk,
    TResult? Function(@JsonKey(name: 'status') String? value)? cancel,
  }) {
    return pass?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'status') String? value)? inProcess,
    TResult Function(@JsonKey(name: 'status') String? value)? review,
    TResult Function(@JsonKey(name: 'status') String? value)? pass,
    TResult Function(@JsonKey(name: 'status') String? value)? fail,
    TResult Function(@JsonKey(name: 'status') String? value)? failRisk,
    TResult Function(@JsonKey(name: 'status') String? value)? cancel,
    required TResult orElse(),
  }) {
    if (pass != null) {
      return pass(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_Review value) review,
    required TResult Function(_Pass value) pass,
    required TResult Function(_Fail value) fail,
    required TResult Function(_FailR value) failRisk,
    required TResult Function(_Cancel value) cancel,
  }) {
    return pass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_Review value)? review,
    TResult? Function(_Pass value)? pass,
    TResult? Function(_Fail value)? fail,
    TResult? Function(_FailR value)? failRisk,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return pass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_Review value)? review,
    TResult Function(_Pass value)? pass,
    TResult Function(_Fail value)? fail,
    TResult Function(_FailR value)? failRisk,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (pass != null) {
      return pass(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_PassToJson(
      this,
    );
  }
}

abstract class _Pass implements StatusKYC {
  factory _Pass([@JsonKey(name: 'status') final String? value]) = _$_Pass;

  factory _Pass.fromJson(Map<String, dynamic> json) = _$_Pass.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_PassCopyWith<_$_Pass> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailCopyWith<$Res> implements $StatusKYCCopyWith<$Res> {
  factory _$$_FailCopyWith(_$_Fail value, $Res Function(_$_Fail) then) =
      __$$_FailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'status') String? value});
}

/// @nodoc
class __$$_FailCopyWithImpl<$Res> extends _$StatusKYCCopyWithImpl<$Res, _$_Fail>
    implements _$$_FailCopyWith<$Res> {
  __$$_FailCopyWithImpl(_$_Fail _value, $Res Function(_$_Fail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Fail(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Fail implements _Fail {
  _$_Fail([@JsonKey(name: 'status') this.value = 'F', final String? $type])
      : $type = $type ?? 'fail';

  factory _$_Fail.fromJson(Map<String, dynamic> json) => _$$_FailFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'StatusKYC.fail(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fail &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailCopyWith<_$_Fail> get copyWith =>
      __$$_FailCopyWithImpl<_$_Fail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'status') String? value) inProcess,
    required TResult Function(@JsonKey(name: 'status') String? value) review,
    required TResult Function(@JsonKey(name: 'status') String? value) pass,
    required TResult Function(@JsonKey(name: 'status') String? value) fail,
    required TResult Function(@JsonKey(name: 'status') String? value) failRisk,
    required TResult Function(@JsonKey(name: 'status') String? value) cancel,
  }) {
    return fail(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'status') String? value)? inProcess,
    TResult? Function(@JsonKey(name: 'status') String? value)? review,
    TResult? Function(@JsonKey(name: 'status') String? value)? pass,
    TResult? Function(@JsonKey(name: 'status') String? value)? fail,
    TResult? Function(@JsonKey(name: 'status') String? value)? failRisk,
    TResult? Function(@JsonKey(name: 'status') String? value)? cancel,
  }) {
    return fail?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'status') String? value)? inProcess,
    TResult Function(@JsonKey(name: 'status') String? value)? review,
    TResult Function(@JsonKey(name: 'status') String? value)? pass,
    TResult Function(@JsonKey(name: 'status') String? value)? fail,
    TResult Function(@JsonKey(name: 'status') String? value)? failRisk,
    TResult Function(@JsonKey(name: 'status') String? value)? cancel,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_Review value) review,
    required TResult Function(_Pass value) pass,
    required TResult Function(_Fail value) fail,
    required TResult Function(_FailR value) failRisk,
    required TResult Function(_Cancel value) cancel,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_Review value)? review,
    TResult? Function(_Pass value)? pass,
    TResult? Function(_Fail value)? fail,
    TResult? Function(_FailR value)? failRisk,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return fail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_Review value)? review,
    TResult Function(_Pass value)? pass,
    TResult Function(_Fail value)? fail,
    TResult Function(_FailR value)? failRisk,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_FailToJson(
      this,
    );
  }
}

abstract class _Fail implements StatusKYC {
  factory _Fail([@JsonKey(name: 'status') final String? value]) = _$_Fail;

  factory _Fail.fromJson(Map<String, dynamic> json) = _$_Fail.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_FailCopyWith<_$_Fail> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailRCopyWith<$Res> implements $StatusKYCCopyWith<$Res> {
  factory _$$_FailRCopyWith(_$_FailR value, $Res Function(_$_FailR) then) =
      __$$_FailRCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'status') String? value});
}

/// @nodoc
class __$$_FailRCopyWithImpl<$Res>
    extends _$StatusKYCCopyWithImpl<$Res, _$_FailR>
    implements _$$_FailRCopyWith<$Res> {
  __$$_FailRCopyWithImpl(_$_FailR _value, $Res Function(_$_FailR) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_FailR(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FailR implements _FailR {
  _$_FailR([@JsonKey(name: 'status') this.value = 'FR', final String? $type])
      : $type = $type ?? 'failRisk';

  factory _$_FailR.fromJson(Map<String, dynamic> json) =>
      _$$_FailRFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'StatusKYC.failRisk(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailR &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailRCopyWith<_$_FailR> get copyWith =>
      __$$_FailRCopyWithImpl<_$_FailR>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'status') String? value) inProcess,
    required TResult Function(@JsonKey(name: 'status') String? value) review,
    required TResult Function(@JsonKey(name: 'status') String? value) pass,
    required TResult Function(@JsonKey(name: 'status') String? value) fail,
    required TResult Function(@JsonKey(name: 'status') String? value) failRisk,
    required TResult Function(@JsonKey(name: 'status') String? value) cancel,
  }) {
    return failRisk(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'status') String? value)? inProcess,
    TResult? Function(@JsonKey(name: 'status') String? value)? review,
    TResult? Function(@JsonKey(name: 'status') String? value)? pass,
    TResult? Function(@JsonKey(name: 'status') String? value)? fail,
    TResult? Function(@JsonKey(name: 'status') String? value)? failRisk,
    TResult? Function(@JsonKey(name: 'status') String? value)? cancel,
  }) {
    return failRisk?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'status') String? value)? inProcess,
    TResult Function(@JsonKey(name: 'status') String? value)? review,
    TResult Function(@JsonKey(name: 'status') String? value)? pass,
    TResult Function(@JsonKey(name: 'status') String? value)? fail,
    TResult Function(@JsonKey(name: 'status') String? value)? failRisk,
    TResult Function(@JsonKey(name: 'status') String? value)? cancel,
    required TResult orElse(),
  }) {
    if (failRisk != null) {
      return failRisk(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_Review value) review,
    required TResult Function(_Pass value) pass,
    required TResult Function(_Fail value) fail,
    required TResult Function(_FailR value) failRisk,
    required TResult Function(_Cancel value) cancel,
  }) {
    return failRisk(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_Review value)? review,
    TResult? Function(_Pass value)? pass,
    TResult? Function(_Fail value)? fail,
    TResult? Function(_FailR value)? failRisk,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return failRisk?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_Review value)? review,
    TResult Function(_Pass value)? pass,
    TResult Function(_Fail value)? fail,
    TResult Function(_FailR value)? failRisk,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (failRisk != null) {
      return failRisk(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_FailRToJson(
      this,
    );
  }
}

abstract class _FailR implements StatusKYC {
  factory _FailR([@JsonKey(name: 'status') final String? value]) = _$_FailR;

  factory _FailR.fromJson(Map<String, dynamic> json) = _$_FailR.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_FailRCopyWith<_$_FailR> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CancelCopyWith<$Res> implements $StatusKYCCopyWith<$Res> {
  factory _$$_CancelCopyWith(_$_Cancel value, $Res Function(_$_Cancel) then) =
      __$$_CancelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'status') String? value});
}

/// @nodoc
class __$$_CancelCopyWithImpl<$Res>
    extends _$StatusKYCCopyWithImpl<$Res, _$_Cancel>
    implements _$$_CancelCopyWith<$Res> {
  __$$_CancelCopyWithImpl(_$_Cancel _value, $Res Function(_$_Cancel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Cancel(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cancel implements _Cancel {
  _$_Cancel([@JsonKey(name: 'status') this.value = 'C', final String? $type])
      : $type = $type ?? 'cancel';

  factory _$_Cancel.fromJson(Map<String, dynamic> json) =>
      _$$_CancelFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'StatusKYC.cancel(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cancel &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CancelCopyWith<_$_Cancel> get copyWith =>
      __$$_CancelCopyWithImpl<_$_Cancel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'status') String? value) inProcess,
    required TResult Function(@JsonKey(name: 'status') String? value) review,
    required TResult Function(@JsonKey(name: 'status') String? value) pass,
    required TResult Function(@JsonKey(name: 'status') String? value) fail,
    required TResult Function(@JsonKey(name: 'status') String? value) failRisk,
    required TResult Function(@JsonKey(name: 'status') String? value) cancel,
  }) {
    return cancel(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'status') String? value)? inProcess,
    TResult? Function(@JsonKey(name: 'status') String? value)? review,
    TResult? Function(@JsonKey(name: 'status') String? value)? pass,
    TResult? Function(@JsonKey(name: 'status') String? value)? fail,
    TResult? Function(@JsonKey(name: 'status') String? value)? failRisk,
    TResult? Function(@JsonKey(name: 'status') String? value)? cancel,
  }) {
    return cancel?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'status') String? value)? inProcess,
    TResult Function(@JsonKey(name: 'status') String? value)? review,
    TResult Function(@JsonKey(name: 'status') String? value)? pass,
    TResult Function(@JsonKey(name: 'status') String? value)? fail,
    TResult Function(@JsonKey(name: 'status') String? value)? failRisk,
    TResult Function(@JsonKey(name: 'status') String? value)? cancel,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_Review value) review,
    required TResult Function(_Pass value) pass,
    required TResult Function(_Fail value) fail,
    required TResult Function(_FailR value) failRisk,
    required TResult Function(_Cancel value) cancel,
  }) {
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_Review value)? review,
    TResult? Function(_Pass value)? pass,
    TResult? Function(_Fail value)? fail,
    TResult? Function(_FailR value)? failRisk,
    TResult? Function(_Cancel value)? cancel,
  }) {
    return cancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_Review value)? review,
    TResult Function(_Pass value)? pass,
    TResult Function(_Fail value)? fail,
    TResult Function(_FailR value)? failRisk,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_CancelToJson(
      this,
    );
  }
}

abstract class _Cancel implements StatusKYC {
  factory _Cancel([@JsonKey(name: 'status') final String? value]) = _$_Cancel;

  factory _Cancel.fromJson(Map<String, dynamic> json) = _$_Cancel.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_CancelCopyWith<_$_Cancel> get copyWith =>
      throw _privateConstructorUsedError;
}

AccountEntity _$AccountEntityFromJson(Map<String, dynamic> json) {
  return _AccountEntity.fromJson(json);
}

/// @nodoc
mixin _$AccountEntity {
  String? get code => throw _privateConstructorUsedError;
  AccountType? get accountType => throw _privateConstructorUsedError;
  String? get ownerId => throw _privateConstructorUsedError;
  StatusVerify? get statusVerify => throw _privateConstructorUsedError;
  StatusBlock? get statusblock => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountEntityCopyWith<AccountEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEntityCopyWith<$Res> {
  factory $AccountEntityCopyWith(
          AccountEntity value, $Res Function(AccountEntity) then) =
      _$AccountEntityCopyWithImpl<$Res, AccountEntity>;
  @useResult
  $Res call(
      {String? code,
      AccountType? accountType,
      String? ownerId,
      StatusVerify? statusVerify,
      StatusBlock? statusblock});

  $AccountTypeCopyWith<$Res>? get accountType;
  $StatusVerifyCopyWith<$Res>? get statusVerify;
  $StatusBlockCopyWith<$Res>? get statusblock;
}

/// @nodoc
class _$AccountEntityCopyWithImpl<$Res, $Val extends AccountEntity>
    implements $AccountEntityCopyWith<$Res> {
  _$AccountEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? accountType = freezed,
    Object? ownerId = freezed,
    Object? statusVerify = freezed,
    Object? statusblock = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      accountType: freezed == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as AccountType?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      statusVerify: freezed == statusVerify
          ? _value.statusVerify
          : statusVerify // ignore: cast_nullable_to_non_nullable
              as StatusVerify?,
      statusblock: freezed == statusblock
          ? _value.statusblock
          : statusblock // ignore: cast_nullable_to_non_nullable
              as StatusBlock?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountTypeCopyWith<$Res>? get accountType {
    if (_value.accountType == null) {
      return null;
    }

    return $AccountTypeCopyWith<$Res>(_value.accountType!, (value) {
      return _then(_value.copyWith(accountType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusVerifyCopyWith<$Res>? get statusVerify {
    if (_value.statusVerify == null) {
      return null;
    }

    return $StatusVerifyCopyWith<$Res>(_value.statusVerify!, (value) {
      return _then(_value.copyWith(statusVerify: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusBlockCopyWith<$Res>? get statusblock {
    if (_value.statusblock == null) {
      return null;
    }

    return $StatusBlockCopyWith<$Res>(_value.statusblock!, (value) {
      return _then(_value.copyWith(statusblock: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AccountEntityCopyWith<$Res>
    implements $AccountEntityCopyWith<$Res> {
  factory _$$_AccountEntityCopyWith(
          _$_AccountEntity value, $Res Function(_$_AccountEntity) then) =
      __$$_AccountEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? code,
      AccountType? accountType,
      String? ownerId,
      StatusVerify? statusVerify,
      StatusBlock? statusblock});

  @override
  $AccountTypeCopyWith<$Res>? get accountType;
  @override
  $StatusVerifyCopyWith<$Res>? get statusVerify;
  @override
  $StatusBlockCopyWith<$Res>? get statusblock;
}

/// @nodoc
class __$$_AccountEntityCopyWithImpl<$Res>
    extends _$AccountEntityCopyWithImpl<$Res, _$_AccountEntity>
    implements _$$_AccountEntityCopyWith<$Res> {
  __$$_AccountEntityCopyWithImpl(
      _$_AccountEntity _value, $Res Function(_$_AccountEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? accountType = freezed,
    Object? ownerId = freezed,
    Object? statusVerify = freezed,
    Object? statusblock = freezed,
  }) {
    return _then(_$_AccountEntity(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      accountType: freezed == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as AccountType?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      statusVerify: freezed == statusVerify
          ? _value.statusVerify
          : statusVerify // ignore: cast_nullable_to_non_nullable
              as StatusVerify?,
      statusblock: freezed == statusblock
          ? _value.statusblock
          : statusblock // ignore: cast_nullable_to_non_nullable
              as StatusBlock?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountEntity implements _AccountEntity {
  _$_AccountEntity(
      {this.code,
      this.accountType,
      this.ownerId,
      this.statusVerify,
      this.statusblock});

  factory _$_AccountEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AccountEntityFromJson(json);

  @override
  final String? code;
  @override
  final AccountType? accountType;
  @override
  final String? ownerId;
  @override
  final StatusVerify? statusVerify;
  @override
  final StatusBlock? statusblock;

  @override
  String toString() {
    return 'AccountEntity(code: $code, accountType: $accountType, ownerId: $ownerId, statusVerify: $statusVerify, statusblock: $statusblock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountEntity &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.statusVerify, statusVerify) ||
                other.statusVerify == statusVerify) &&
            (identical(other.statusblock, statusblock) ||
                other.statusblock == statusblock));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, accountType, ownerId, statusVerify, statusblock);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountEntityCopyWith<_$_AccountEntity> get copyWith =>
      __$$_AccountEntityCopyWithImpl<_$_AccountEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountEntityToJson(
      this,
    );
  }
}

abstract class _AccountEntity implements AccountEntity {
  factory _AccountEntity(
      {final String? code,
      final AccountType? accountType,
      final String? ownerId,
      final StatusVerify? statusVerify,
      final StatusBlock? statusblock}) = _$_AccountEntity;

  factory _AccountEntity.fromJson(Map<String, dynamic> json) =
      _$_AccountEntity.fromJson;

  @override
  String? get code;
  @override
  AccountType? get accountType;
  @override
  String? get ownerId;
  @override
  StatusVerify? get statusVerify;
  @override
  StatusBlock? get statusblock;
  @override
  @JsonKey(ignore: true)
  _$$_AccountEntityCopyWith<_$_AccountEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
