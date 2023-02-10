
import '../model/model.dart';

abstract class TodoBlocState {}

class TodoBlocInitState extends TodoBlocState {}

class TodoBlocLoadingState extends TodoBlocState {}

class TodoBlocSuccessState extends TodoBlocState {
  List<Todos>? data;
  TodoBlocSuccessState(this.data);
}

class TodoBlocFailState extends TodoBlocState {
  String? error;
  TodoBlocFailState(this.error);
}

