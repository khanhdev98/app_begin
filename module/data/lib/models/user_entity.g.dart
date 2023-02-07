// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserEntity _$$_UserEntityFromJson(Map<String, dynamic> json) =>
    _$_UserEntity(
      halokiId: json['pn300'] as String?,
      userIdToken: json['pn100'] as String?,
      emailOrPhone: json['emailOrPhone'] as String?,
      fullName: json['nv206'] as String?,
      avatar: json['avatar'] as String?,
      firstName: json['nv203'] as String?,
      lastName: json['nv204'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      gender: json['nv207'] as String?,
      emailAddress: json['nv209'] as String?,
      verify: json['nn303'] as int?,
      linkImageFrontIdCard: json['linkImageFrontIdCard'] as String?,
      linkImageBackIdCard: json['linkImageBackIdCard'] as String?,
      statusKYC: json['status'] == null
          ? null
          : StatusKYC.fromJson(json['status'] as Map<String, dynamic>),
      timeWaiting: json['value'] as int?,
      country: json['country'] as String?,
      birthDay: json['nd204'] as String?,
      address: json['address'] == null
          ? null
          : AddressEntity.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserEntityToJson(_$_UserEntity instance) =>
    <String, dynamic>{
      'pn300': instance.halokiId,
      'pn100': instance.userIdToken,
      'emailOrPhone': instance.emailOrPhone,
      'nv206': instance.fullName,
      'avatar': instance.avatar,
      'nv203': instance.firstName,
      'nv204': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'nv207': instance.gender,
      'nv209': instance.emailAddress,
      'nn303': instance.verify,
      'linkImageFrontIdCard': instance.linkImageFrontIdCard,
      'linkImageBackIdCard': instance.linkImageBackIdCard,
      'status': instance.statusKYC,
      'value': instance.timeWaiting,
      'country': instance.country,
      'nd204': instance.birthDay,
      'address': instance.address,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      json['value'] as int? ?? 0,
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$_Business _$$_BusinessFromJson(Map<String, dynamic> json) => _$_Business(
      json['value'] as int? ?? 1,
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_BusinessToJson(_$_Business instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$_NotYet _$$_NotYetFromJson(Map<String, dynamic> json) => _$_NotYet(
      json['value'] as int? ?? 0,
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_NotYetToJson(_$_NotYet instance) => <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$_Verified _$$_VerifiedFromJson(Map<String, dynamic> json) => _$_Verified(
      json['value'] as int? ?? 1,
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_VerifiedToJson(_$_Verified instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$_Block _$$_BlockFromJson(Map<String, dynamic> json) => _$_Block(
      json['value'] as int? ?? 1,
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_BlockToJson(_$_Block instance) => <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$_Unlock _$$_UnlockFromJson(Map<String, dynamic> json) => _$_Unlock(
      json['value'] as int? ?? 0,
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_UnlockToJson(_$_Unlock instance) => <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$_InProcess _$$_InProcessFromJson(Map<String, dynamic> json) => _$_InProcess(
      json['status'] as String? ?? 'I',
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_InProcessToJson(_$_InProcess instance) =>
    <String, dynamic>{
      'status': instance.value,
      'runtimeType': instance.$type,
    };

_$_Review _$$_ReviewFromJson(Map<String, dynamic> json) => _$_Review(
      json['status'] as String? ?? 'R',
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ReviewToJson(_$_Review instance) => <String, dynamic>{
      'status': instance.value,
      'runtimeType': instance.$type,
    };

_$_Pass _$$_PassFromJson(Map<String, dynamic> json) => _$_Pass(
      json['status'] as String? ?? 'P',
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_PassToJson(_$_Pass instance) => <String, dynamic>{
      'status': instance.value,
      'runtimeType': instance.$type,
    };

_$_Fail _$$_FailFromJson(Map<String, dynamic> json) => _$_Fail(
      json['status'] as String? ?? 'F',
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_FailToJson(_$_Fail instance) => <String, dynamic>{
      'status': instance.value,
      'runtimeType': instance.$type,
    };

_$_FailR _$$_FailRFromJson(Map<String, dynamic> json) => _$_FailR(
      json['status'] as String? ?? 'FR',
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_FailRToJson(_$_FailR instance) => <String, dynamic>{
      'status': instance.value,
      'runtimeType': instance.$type,
    };

_$_Cancel _$$_CancelFromJson(Map<String, dynamic> json) => _$_Cancel(
      json['status'] as String? ?? 'C',
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_CancelToJson(_$_Cancel instance) => <String, dynamic>{
      'status': instance.value,
      'runtimeType': instance.$type,
    };

_$_AccountEntity _$$_AccountEntityFromJson(Map<String, dynamic> json) =>
    _$_AccountEntity(
      code: json['code'] as String?,
      accountType: json['accountType'] == null
          ? null
          : AccountType.fromJson(json['accountType'] as Map<String, dynamic>),
      ownerId: json['ownerId'] as String?,
      statusVerify: json['statusVerify'] == null
          ? null
          : StatusVerify.fromJson(json['statusVerify'] as Map<String, dynamic>),
      statusblock: json['statusblock'] == null
          ? null
          : StatusBlock.fromJson(json['statusblock'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AccountEntityToJson(_$_AccountEntity instance) =>
    <String, dynamic>{
      'code': instance.code,
      'accountType': instance.accountType,
      'ownerId': instance.ownerId,
      'statusVerify': instance.statusVerify,
      'statusblock': instance.statusblock,
    };
