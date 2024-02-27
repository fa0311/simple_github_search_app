import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:simple_github_search_app/infrastructure/github/api.dart';
import 'package:simple_github_search_app/infrastructure/github/http.dart';

class TestUtilDio {
  TestUtilDio._();

  static String get baseUrl => 'https://localhost:3000';

  static (DioAdapter, GithubAPI) getGithubAPIMock() {
    final dio = Dio(BaseOptions(baseUrl: baseUrl));
    final adapter = DioAdapter(dio: dio);
    final client = GithubAPI(client: GitHubHttp(dio: dio));
    return (adapter, client);
  }
}
