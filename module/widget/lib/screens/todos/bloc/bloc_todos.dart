import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widget/screens/todos/bloc/todo_state.dart';

import '../service/api_service.dart';

class BlocTodosCubit extends Cubit<TodoBlocState> {

  TodosUseCase getTodos;
  BlocTodosCubit(this.getTodos) : super(TodoBlocLoadingState());
  ScrollModel scrollModel = ScrollModel(isScrolling: true);
  void searchTodos () async {
    scrollModel.onFetchData(false);
      var data = await getTodos.fetchData();
      if (data == null) {
        scrollModel.onFetchData(true, isFailed: true);
        emit(TodoBlocFailState("loi khong co da ta"));
      } else {
        scrollModel.onFetchData(true);
        emit(TodoBlocSuccessState(data));
      }
  }
}

class ScrollModel with ChangeNotifier {
  ScrollModel({required this.isScrolling});

  bool isScrolling = false;
  bool isFetchDone = false;
  bool isFailure = false;

  void onListenerDirection(bool isReverse) {
    isScrolling = isReverse;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      notifyListeners();
    });
  }

  void onFetchData(bool isSuccess, {bool isFailed = false}) {
    isFetchDone = isSuccess;
    isFailure = isFailed;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      notifyListeners();
    });
  }
}