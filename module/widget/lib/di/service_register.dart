import 'package:config/bootstrap/app_injection.dart';
import 'package:config/bootstrap/app_register.dart';
import 'package:config/injectable/app_injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../component/page_route/pop_scope_dismiss_route.dart';
import '../screens/todos/bloc/bloc_todos.dart';
import '../screens/todos/screen/todos_screen.dart';
import '../screens/todos/service/api_service.dart';


class ServiceRegister extends AppRegister {
  @override
  Future<void> dependencies(AppInjection injection) async {
    injection.factory<TodosUseCase>(() => TodosUseCase());
  }
  static const String todoScreen = '/todoScreen';
  @override
  List<String> routers = [todoScreen];

  @override
  Route? onGenerate(AppInjection injection, RouteSettings settings) {
    switch (settings.name) {

      case todoScreen:
        return popScopeDismissRoute(
            settings: settings,
            child: () => MultiBlocProvider(
              providers: [
                BlocProvider<BlocTodosCubit>(
                    create: (_) => AppInjector.I.get<BlocTodosCubit>()),
              ],
              child: const TodoScreen(title: "Todos"),
            ));
      default:
        return null;
    }
  }
}