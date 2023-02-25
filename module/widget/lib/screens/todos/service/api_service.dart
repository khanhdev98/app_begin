import 'package:dio/dio.dart';

import '../model/model.dart';
import 'api_url.dart';

class TodosUseCase {
  final Dio _dio = Dio();
  Future<List<Todos>?> fetchData() async {
    print("object khanh");
    Response response = await _dio.get(ApiUrl.I.todoUrl);
    print("response======= $response");
    List res = (response.data as List);
    List<Todos> todos =
    res.map((e) => Todos.fromJson(e as Map<String, dynamic>)).toList();
    return todos;
  }
}