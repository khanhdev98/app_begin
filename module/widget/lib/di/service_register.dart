import 'package:config/bootstrap/app_injection.dart';
import 'package:config/bootstrap/app_register.dart';

import '../screen/todos/service/api_service.dart';

class ServiceRegister extends AppRegister {
  @override
  Future<void> dependencies(AppInjection injection) async {

    injection.factory<TodosUseCase>(() => TodosUseCase());
  }

  @override
  List<String> routers = [];
}