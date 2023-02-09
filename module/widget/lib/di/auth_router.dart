import 'package:config/bootstrap/app_injection.dart';
import 'package:config/bootstrap/app_register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:config/injectable/app_injector.dart';
import 'package:widget/screen/todos/bloc/bloc_todos.dart';
import '../component/page_route/pop_scope_dismiss_route.dart';
import '../provider/location_provider.dart';
import '../screen/sign/bloc/action_screen_cubit.dart';
import '../screen/sign/bloc/focus_bloc_cubit.dart';
import '../screen/sign/bloc/sign_bloc_cubit.dart';
import '../screen/sign/signin_screen.dart';
import '../screen/todos/screen/todos_screen.dart';
import '../screen/todos/service/api_service.dart';

class AppCommon extends AppRegister {
  @override
  Future<void> dependencies(AppInjection injection) async {
    injection.factory<LocaleProvider>(() => LocaleProvider());
    injection.factory<FocusBlocCubit>(() => FocusBlocCubit());
    injection.factory<SignBlocCubit>(() => SignBlocCubit());
    injection.factory<BlocTodosCubit>(() => BlocTodosCubit(AppInjection.I.get<TodosUseCase>()));
  }

  static const String home = '/home';
  static const String launcher = '/launcher';
  static const String todoScreen = '/todoScreen';
  @override
  List<String> routers = [home, launcher, todoScreen];

  @override
  Route? onGenerate(AppInjection injection, RouteSettings settings) {
    switch (settings.name) {
      case home:
        return popScopeDismissRoute(
          settings: settings,
          child: () => MultiBlocProvider(providers: [
            BlocProvider<SignBlocCubit>(create: (_) => AppInjector.I.get<SignBlocCubit>()),
            BlocProvider<FocusBlocCubit>(create: (_) => AppInjector.I.get()..registerFocusSignIn()),
            BlocProvider<ActionScreenCubit>(create: (BuildContext context) => ActionScreenCubit())
          ], child: const SignInScreen()),
        );
      case launcher:
        return popScopeDismissRoute(
          settings: settings,
          child: () => const LauncherPage(),
        );

      case todoScreen:
        return popScopeDismissRoute(
            settings: settings,
            child: () => MultiBlocProvider(
                  providers: [
                    BlocProvider<SignBlocCubit>(create: (_) => AppInjector.I.get<SignBlocCubit>()),
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

class LauncherPage extends StatefulWidget {
  const LauncherPage({Key? key}) : super(key: key);

  @override
  State<LauncherPage> createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          height: 288,
          width: 288,
          child: Icon(Icons.more),
        ),
      ),
    );
  }
}
