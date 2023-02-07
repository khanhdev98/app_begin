// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

import 'address_entity.dart';

part 'user_entity.freezed.dart';

part 'user_entity.g.dart';

//String? pn100,
// String? pn300,
// String? nv203,
// String? nv204,
// String? nv206,
// String? nv207,
// String? nv209,
// String? country,
// String? id,
// int? dl146,
// String? dl147,
@freezed
class UserEntity with _$UserEntity {
  const UserEntity._();
  factory UserEntity({
    @JsonKey(name: 'pn300') String? halokiId,
    @JsonKey(name: 'pn100') String? userIdToken,
    String? emailOrPhone,
    @JsonKey(name: 'nv206') String? fullName,
    String? avatar,
    @JsonKey(name: 'nv203') String? firstName,
    @JsonKey(name: 'nv204') String? lastName,
    //DateTime? dateOfBirth,
    //String? streetAddress,
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
    AddressEntity? address,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}

@freezed
class AccountType with _$AccountType {
  static List<AccountType> values = [
    AccountType.user(),
    AccountType.bussiness()
  ];

  factory AccountType.user([@Default(0) int? value]) = _User;

  factory AccountType.bussiness([@Default(1) int? value]) = _Business;

  factory AccountType.fromJson(Map<String, dynamic> json) =>
      _$AccountTypeFromJson(json);
}

@freezed
class StatusVerify with _$StatusVerify {
  static List<StatusVerify> values = [
    StatusVerify.notYet(),
    StatusVerify.verified(),
  ];

  factory StatusVerify.notYet([@Default(0) int? value]) = _NotYet;

  factory StatusVerify.verified([@Default(1) int? value]) = _Verified;

  factory StatusVerify.fromJson(Map<String, dynamic> json) =>
      _$StatusVerifyFromJson(json);
}

@freezed
class StatusBlock with _$StatusBlock {
  static List<StatusBlock> values = [
    StatusBlock.block(),
    StatusBlock.unlock(),
  ];

  factory StatusBlock.block([@Default(1) int? value]) = _Block;

  factory StatusBlock.unlock([@Default(0) int? value]) = _Unlock;

  factory StatusBlock.fromJson(Map<String, dynamic> json) =>
      _$StatusBlockFromJson(json);
}
//? 1 (I)
//? In Process
/// Your account information has not been verified. Please verify your information to be able to link your bank account.
/// Lưu ý: verify your information là link điều hướng người dùng đến Plaid Link để tiếp tục quá trình KYC
//? 2 (R)
/// Pending Review
/// Your account information is being processed. Please wait while we verify the account.
//? 3 (P)
/// Passed
/// Your account information has been verified.
//? 4 (F)
/// Failed (thành công 2 bước watchlist screening & risk check)
/// Expired
/// Cancelled
/// Your account information is invalid. Please check your provided details or contact our customer support.
//? 5(FR)
/// Failed (thất bại 1 trong 2 bước watchlist screening & risk check)
/// There has been an issue when verifying your identity. Please restart your verification process or contact our customer support.

// "The status of this Identity Verification attempt.
// I: In Process
// R: Review
// P: Pass
// F: Fail  (Ngoài risk check, watchlist screening)
// FR: Fail (risk check, watchlist screening)
// C: Cancel"
@freezed
class StatusKYC with _$StatusKYC {
  static List<StatusKYC> values = [
    StatusKYC.inProcess(),
    StatusKYC.pass(),
  ];
  factory StatusKYC.inProcess(
      [@JsonKey(name: 'status') @Default('I') String? value]) = _InProcess;
  factory StatusKYC.review(
      [@JsonKey(name: 'status') @Default('R') String? value]) = _Review;
  factory StatusKYC.pass(
      [@JsonKey(name: 'status') @Default('P') String? value]) = _Pass;
  factory StatusKYC.fail(
      [@JsonKey(name: 'status') @Default('F') String? value]) = _Fail;
  factory StatusKYC.failRisk(
      [@JsonKey(name: 'status') @Default('FR') String? value]) = _FailR;
  factory StatusKYC.cancel(
      [@JsonKey(name: 'status') @Default('C') String? value]) = _Cancel;

  factory StatusKYC.fromJson(Map<String, dynamic> json) =>
      _$StatusKYCFromJson(json);
}

//2.1	accInf.nv301	String		Mã tài khoản (auto generate)
//2.2	accInf.nn302	Number		Loại tài khoản (0: cá nhân, 1: doanh nghiệp)
//2.3	accInf.pn100	String		Id user owner
//2.4	accInf.nn303	Number		Trạng thái verify (1: verified, 0 : not yet, 2: waiting)
//2.5	accInf.nn310	Number		Trạng thái block (0: unlock, 1: block)
@freezed
class AccountEntity with _$AccountEntity {
  factory AccountEntity({
    String? code,
    AccountType? accountType,
    String? ownerId,
    StatusVerify? statusVerify,
    StatusBlock? statusblock,
  }) = _AccountEntity;

  factory AccountEntity.fromJson(Map<String, dynamic> json) =>
      _$AccountEntityFromJson(json);
}
