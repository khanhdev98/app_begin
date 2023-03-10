import 'package:content/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme/material3/m3_theme_lib.dart';
import 'package:widget/component/extensions/collection_extention.dart';

import 'package:widget/component/flutter_easyloading-3.0.5/lib/flutter_easyloading.dart';
import '../../../component/text_input/app_input.dart';
import '../../../component/validate/validate.dart';
import '../../../component/widget/language_select.dart';
import 'bloc/focus_bloc_cubit.dart';
import 'bloc/sign_bloc_cubit.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _formKeySign = GlobalKey<FormState>();
  final TextEditingController _controllerAcc = TextEditingController();
  final TextEditingController _controllerPass = TextEditingController();

  FocusBlocCubit get focusBlocCubit => context.read<FocusBlocCubit>();

  SignBlocCubit get _signBloc => context.read<SignBlocCubit>();

  FocusNode? get focusEmail => focusBlocCubit.focusNodes.getOrNull(0);

  FocusNode? get focusPassword => focusBlocCubit.focusNodes.getOrNull(1);

  Future<void> _loginSubmit() async {
    FocusScope.of(context).unfocus();
    if (_formKeySign.currentState?.validate() == true) {
      if (mounted) {
        EasyLoading.show();
        await Future.delayed(const Duration(milliseconds: 1000), () {
          EasyLoading.dismiss();
        }).then((value) => _signBloc.signIn(
          userName: _controllerAcc.text.trim().toLowerCase(),
          pass: _controllerPass.text.trim(),
        ));
      }
    }
  }
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (!mounted) return;
      // bloc signIn
      _signBloc.stream.listen((event) => event.trigger(context));
    });
    super.initState();
  }
  @override
  void dispose() {
    _formKeySign.currentState?.dispose();
    _controllerAcc.clear();
    _controllerPass.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.surfaceColor,
      appBar: AppBar(
        elevation: 3,
        title: Text(Str.of(context).sign_in),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Form(
                  key: _formKeySign,
                  child: Column(
                    children: [
                      AppInput.text(
                        unShowStar: true,
                        validate: (value) {
                          return AuthValidate.validateEmail(value, context);
                        },
                        focusNode: focusEmail,
                        isRequire: true,
                        textEditingController: _controllerAcc,
                        labelText: Str.of(context).sign_enter_email_or_number,
                        textErrRequire: Str.of(context).validate_email_require,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AppInput.password(
                        validate: (value) {
                          return AuthValidate.validatePassword(value, context);
                        },
                        showPassword: true,
                        focusNode: focusPassword,
                        textEditingController: _controllerPass,
                        labelText: Str.of(context).sign_enter_password,
                        textErrRequire: Str.of(context).validate_email_require,
                      ),
                    ],
                  )),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () => _loginSubmit(),
                child: Text(Str.of(context).sign_in),
              ),
              const LanguageSelect(
                isSignIn: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}