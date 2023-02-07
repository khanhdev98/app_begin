
import 'package:bloc/bloc.dart';
import 'package:content/l10n/app_localizations.dart';
import 'package:data/data.dart';
import 'package:data/models/failure_entity.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

import '../../../component/dialog/app_alert_dialog.dart';
import '../../../component/extensions/extension_utils/dynamic.dart';
part 'sign_bloc_state.dart';

class SignBlocCubit extends Cubit<SignBlocState>{
  SignBlocCubit() : super(SignBlocInitial());

}