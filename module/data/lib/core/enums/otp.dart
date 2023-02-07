// "Loại OTP
// - 1: OTP đăng ký tài khoản
// - 2: OTP đăng nhập
// - 3: OTP quên mật khẩu
// - 4: OTP send money
// - 5: OTP transfer"
// */

import 'package:equatable/equatable.dart';

class OtpType extends Equatable {
  const OtpType._(this.value);

  static List<OtpType> values = [
    OtpType.signIn(),
    OtpType.signUp(),
    OtpType.forgotPassword(),
    OtpType.sendMoney(),
    OtpType.transfer(),
  ];
  
  final int value;

  factory OtpType.signUp() => const OtpType._(1);

  factory OtpType.signIn() => const OtpType._(2);

  factory OtpType.forgotPassword() => const OtpType._(3);

  factory OtpType.sendMoney() => const OtpType._(4);

  factory OtpType.transfer() => const OtpType._(5);

  factory OtpType.deleteAccount() => const OtpType._(6);

  @override
  List<Object?> get props => [value];
}
