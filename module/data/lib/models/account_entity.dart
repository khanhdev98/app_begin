import 'package:data/models/sign_in_param.dart';

import '../core/StringUtils.dart';

const String kClientCredentials = 'client_credentials';
const String kPassword = 'password';
const isMd5 = true;

/// User login with information account
class AccountSignEntity {
  //19522371@gm.uit.edu.vn
  String userName;
  String password;

  static TokenParam anonymous() => TokenParam(grant_type: kClientCredentials);

  static TokenParam transform(AccountSignEntity account) => TokenParam(
        grant_type: kPassword,
        username: account.userName.toString(),
        password: StringUtils.md5(account.password.toString()),
      );

  AccountSignEntity({
    required this.userName,
    required this.password,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AccountSignEntity &&
          runtimeType == other.runtimeType &&
          userName == other.userName &&
          password == other.password);

  @override
  int get hashCode => userName.hashCode ^ password.hashCode;

  @override
  String toString() {
    return 'Account{ userName: $userName, password: $password,}';
  }

  AccountSignEntity copyWith({
    String? userName,
    String? password,
  }) {
    return AccountSignEntity(
      userName: userName ?? this.userName,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userName': userName,
      'password': password,
    };
  }

  factory AccountSignEntity.fromMap(Map<String, dynamic> map) {
    return AccountSignEntity(
      userName: map['userName'] as String,
      password: map['password'] as String,
    );
  }

//</editor-fold>
}
