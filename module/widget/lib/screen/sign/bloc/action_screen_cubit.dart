import 'package:bloc/bloc.dart';

class ActionScreenCubit extends Cubit<bool> {
  ActionScreenCubit() : super(false);

  void blockScreen() {
    emit(true);
  }
  void unBlockScreen() {
    emit(false);
  }
}
