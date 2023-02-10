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
    Navigator.pushNamedAndRemoveUntil(
        context, AppCommon.home, (route) => route.settings.name == AppCommon.home);
  }
}

/// SingIn thất bại
class SignFailure extends SignBlocState {
  SignFailure();

  @override
  Future trigger(BuildContext context) {
    return showDialog(
        context: context,
        builder: (_) => WillPopScope(
              onWillPop: () async => false,
              child: AlertDialog(
                contentPadding: const EdgeInsets.only(top: 16, left: 24, right: 24),
                actionsPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
                alignment: Alignment.center,
                backgroundColor: context.surfaceColor,
                title: Text(
                  Str.of(context).error_unauthorized_title,
                  style: context.dialogTitle,
                ),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[
                      Text(Str.of(context).sign_in_error_login_message),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      //onButtonPressed();
                    },
                    child: const Text(
                      "try again",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ));
  }
}

class SignOutState extends SignBlocState {
  @override
  void trigger(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, AppCommon.signIn, (route) => route.settings.name == AppCommon.signIn);
  }
}
