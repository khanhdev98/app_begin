const String _todoUrl = "https://jsonplaceholder.typicode.com/todos";
const String _users = "https://jsonplaceholder.typicode.com/users";
class ApiUrl {
  ApiUrl._();

  static final ApiUrl _instance = ApiUrl._();

  static ApiUrl get I => _instance;

  final List<String> values = [_todoUrl, _users];

  String get todoUrl => _todoUrl;
  String get users => _users;
}