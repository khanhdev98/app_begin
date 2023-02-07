import 'package:dio/dio.dart';

import '../model/model.dart';
import 'api_url.dart';

class NewApiService {
  final Dio _dio = Dio();
  Future<List<Todos>> fetchData() async {
    Response response = await _dio.get(ApiUrl.I.todoUrl);
    List res = (response.data as List);
    List<Todos> todos =
    res.map((e) => Todos.fromJson(e as Map<String, dynamic>)).toList();
    return todos;
  }
}