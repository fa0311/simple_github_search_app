import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/infrastructure/github/http.dart';

void main() {
  test('GitHubHttp.setBearerToken でヘッダーが書き換わる ', () async {
    final dio = GitHubHttp.getDio();
    GitHubHttp(dio: dio).setBearerToken('token');
    expect(dio.options.headers['Authorization'], 'Bearer token');
  });
}
