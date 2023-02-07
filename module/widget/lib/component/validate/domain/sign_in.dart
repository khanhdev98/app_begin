import 'package:widget/component/extensions/regex_extension.dart';

bool isValidSignInForm(String value) => value.isEmail() || value.isPhone();
