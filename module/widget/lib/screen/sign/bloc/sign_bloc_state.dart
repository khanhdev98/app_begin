part of 'sign_bloc_cubit.dart';

@immutable
abstract class SignBlocState {
  void trigger(BuildContext context);
}

/// Bắt đâu vào signIn
class SignBlocInitial extends SignBlocState {
  @override
  void trigger(BuildContext context) {}
}

/// SignIn thành công
class SignDone extends SignBlocState {
  @override
  void trigger(BuildContext context) {
    Future.delayed(Duration.zero).then((value) => Navigator.of(context)
        .pushNamedAndRemoveUntil('/home', ((route) => false)));
  }
}

/// SingIn thất bại
class SignFailure extends SignBlocState {
  final Failure failure;
  final OtpType otpType;
  SignFailure(this.failure,this.otpType);

  @override
  void trigger(BuildContext context) {
    int? code = cast<int>(failure.error);
    if (otpType == OtpType.signIn()) {
      failure.maybeWhen(
        orElse: () => _showDialogMessage(context, failure.error.toString()),
        unauthorized: (message, error, response) {
          /// 4138: tài khoản không tồn tại hoặc không đúng
          /// 4139: mật khẩu không đúng
          if (code == 4138 || failure.error == 4138) {
            return _showDialogMessage(
                context, "We are unable to find your Haloki Account. Please contact customer support for more details.");
          } else if (code == 4139 || failure.error == 4139) {
            return _showDialogMessage(
                context, "Current password is incorrect.");
          }
          else {
            return _showDialogMessage(
                context, failure.message ?? failure.error.toString());
          }
        },
        request: (message, error, response) {
          if (failure.error == Str.of(context).error_code_network_connection ||
              failure.message == Str.of(context).error_code_network_connection) {
            return _showDialogMessage(context,
                Str.of(context).message_error_network_connection);
          }
          else {
            return _showDialogMessage(
                context, failure.message ?? failure.error.toString());
          }
        },
      );
    } else {
      /*if(code?.isErrorSignUp == true) {
        return _showDialogMessage(
            context, "The account already exists, please use another email",
            title: "Sign up failure"
        );
      } else */if (failure.error == 6001 ) {
        ///6001 is example for account blocked, waiting BE reply question. Add later
        return _showDialogMessage(
            context, "This account has been blocked! We noticed some unusual activities on your account. To help protect you from fraud or abuse, we\'ve temporarily blocked this account.");
      } else if (failure.error == Str.of(context).error_code_network_connection ||
          failure.message == Str.of(context).error_code_network_connection) {
        return _showDialogMessage(context,
            Str.of(context).message_error_network_connection);
      }
      else {
        return _showDialogMessage(
            context, Str.of(context).error_common);
      }
    }
  }

  void _showDialogMessage(BuildContext context, String? message, {String? title}) => showDialog(
      context: context,
      builder: (_) => AppAlertDialog(
        title: title ?? Str.of(context).error_unauthorized_title,
        content: message ?? Str.of(context).error_unauthorized_content_message,
        buttonText: Str.of(context).text_button_fail_log_in,
        onButtonPressed: (() => {}),
      ));
}

// Trạng thái cần kiểm tra otp code
// class StartVerifyOtpCode extends SignBlocState {
//   // Thông tin user cần verify
//   final VerifyCodeModel? codeModel;
//   StartVerifyOtpCode(this.codeModel);
//
//   @override
//   void trigger(BuildContext context) {
//     Navigator.of(context).pushNamed(
//       AuthRouter.verifiCode,
//       arguments: codeModel,
//     );
//   }
// }
//
// /// Gửi Otp
// class FailureSendOtpTooMuch extends SignBlocState {
//   final Failure failure;
//   final int? seconds;
//   FailureSendOtpTooMuch(this.failure, this.seconds);
//   @override
//   void trigger(BuildContext context) => _showDialogMessage(context);
//
//   void _showDialogMessage(BuildContext context) => showDialog(
//       context: context,
//       builder: (_) => AppAlertDialog(
//         title: Str.of(context).error_unauthorized_title,
//         content:
//         failure.message ?? Str.of(context).verify_error_waiting_24h,
//         buttonText: Str.of(context).confirmation,
//         onButtonPressed: (() => {}),
//       ));
// }
//
// @Deprecated('Not use for sign')
// class WrongAccountOrPassword extends SignBlocState {
//   final Failure failure;
//   WrongAccountOrPassword(this.failure);
//
//   @override
//   void trigger(BuildContext context) => _showDialogMessage(context);
//
//   void _showDialogMessage(BuildContext context) => showDialog(
//       context: context,
//       builder: (_) => AppAlertDialog(
//         title: "Sign in failure",
//         content: failure.message ?? Str.of(context).error,
//         buttonText: Str.of(context).confirmation,
//         onButtonPressed: (() => {}),
//       ));
// }
