import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/infrastructure/github/src/http.dart';

import '../../../../test_util/assets.dart';
import '../../../../test_util/dio.dart';

void main() {
  test('Exception Model', () async {
    final (adapter, client) = TestUtilDio.getGithubAPIMock();
    final file = await TestUtilAssets.readJson('github/exception.json');
    adapter.onGet('/search/repositories', (request) => request.reply(400, file));
    expect(
      client.searchRepositories(query: 'flutter'),
      throwsA(isA<GitHubHttpException>()),
    );
  });
}
