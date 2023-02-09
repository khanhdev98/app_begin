import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widget/screen/todos/bloc/todo_state.dart';
import 'package:widget/screen/todos/model/model.dart';

import '../service/api_service.dart';

class BlocTodosCubit extends Cubit<TodoBlocState> {

  TodosUseCase getTodos;
  BlocTodosCubit(this.getTodos) : super(TodoBlocLoadingState());

  void searchTodos () async {
      var data = await getTodos.fetchData();
      if (data == null) {
        emit(TodoBlocFailState("loi khong co da ta"));
      } else {
        emit(TodoBlocSuccessState(data));
      }
  }
}