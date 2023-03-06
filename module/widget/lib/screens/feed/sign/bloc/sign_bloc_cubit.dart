import 'package:bloc/bloc.dart';
import 'package:content/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:theme/material3/color/color_schemes.dart';
import 'package:theme/material3/m3_theme_lib.dart';
import '../../../../di/auth_router.dart';
import '../data/user.dart';
part 'sign_bloc_state.dart';

class SignBlocCubit extends Cubit<SignBlocState>{
  SignBlocCubit() : super(SignBlocInitial());

  Iterable<String?> accounts = users.map((value) => value["acc"]);

  Iterable<String?> passwords = users.map((value) => value["pass"]);

  signIn({required String userName, required String pass}) {

    SignBlocState state;
    if (accounts.contains(userName) && passwords.contains(pass)) {
      state = SignDone();
      emit(state);
    } else {
      state= SignFailure();
      emit(state);
    }
  }

  reset() {

  }

  signOut() {
    SignBlocState state;
    state = SignOutState();
    emit(state);
  }
}