import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/infrastructure/github/http.dart';
import 'package:simple_github_search_app/infrastructure/github/model/param.dart';

import '../../../test_util/assets.dart';
import '../../../test_util/dio.dart';

void main() {
  test('Exception Model', () async {
    final (adapter, client) = TestUtilDio.getGithubAPIMock();
    final file = await TestUtilAssets.readJson('github/exception.json');
    adapter.onGet('/search/repositories', (request) => request.reply(400, file));
    final res = client.searchRepositories(
      const GithubSearchRepositoriesParam(q: 'flutter'),
    );
    expect(res, throwsA(isA<GitHubHttpException>()));
  });
}
