import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/infrastructure/github/model/param.dart';
import 'package:simple_github_search_app/infrastructure/github/model/repository.dart';
import 'package:simple_github_search_app/infrastructure/github/model/response.dart';

import '../../../test_util/assets.dart';
import '../../../test_util/dio.dart';

void main() {
  test('Repository Model', () async {
    final (adapter, client) = TestUtilDio.getGithubAPIMock();
    final file = await TestUtilAssets.readJson('github/search_repositories.json');
    adapter.onGet('/search/repositories', (request) => request.reply(200, file));
    final res = await client.searchRepositories(
      const GithubSearchRepositoriesParam(q: 'flutter'),
    );
    expect(res, isA<GithubResponse<GithubRepository>>());
  });
}
