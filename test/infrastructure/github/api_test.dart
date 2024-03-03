import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/infrastructure/github/api.dart';
import 'package:simple_github_search_app/infrastructure/github/http.dart';
import 'package:simple_github_search_app/infrastructure/github/model/param.dart';
import 'package:simple_github_search_app/infrastructure/github/model/repository.dart';
import 'package:simple_github_search_app/infrastructure/github/model/response.dart';
import 'package:simple_github_search_app/infrastructure/github/model/user.dart';

import '../../test_util/assets.dart';
import '../../test_util/dio.dart';

void main() {
  test('GitHub Search Repositories', () async {
    final (adapter, client) = TestUtilDio.getGithubAPIMock();
    final file = await TestUtilAssets.readJson('github/search_repositories.json');

    // モックの設定
    adapter.onGet('/search/repositories', (request) => request.reply(200, file));

    // APIの実行
    final res = await client.searchRepositories(
      const GithubSearchRepositoriesParam(q: 'flutter'),
    );

    // レスポンスの検証
    expect(res, isA<GithubResponse<GithubRepository>>());
  });
  test('GitHub Get User', () async {
    final (adapter, client) = TestUtilDio.getGithubAPIMock();
    final file = await TestUtilAssets.readJson('github/search_repositories.json');

    // 変数の設定
    final items = file['items'] as List;
    final item = items.first as Map<String, dynamic>;
    final owner = item['owner'] as Map<String, dynamic>;

    // モックの設定
    adapter.onGet('/users/${owner['login']}', (request) => request.reply(200, owner));

    // APIの実行
    final res = await client.getUser(
      owner['login'] as String,
    );

    // レスポンスの検証
    expect(res, isA<GithubUser>());
  });

  test('GitHub Get Repositories', () async {
    final (adapter, client) = TestUtilDio.getGithubAPIMock();
    final file = await TestUtilAssets.readJson('github/search_repositories.json');

    // 変数の設定
    final items = file['items'] as List;
    final item = items.first as Map<String, dynamic>;
    final owner = item['owner'] as Map<String, dynamic>;

    // モックの設定
    adapter.onGet('/repos/${owner['login']}/${item['name']}', (request) => request.reply(200, item));
    final res = await client.getRepositories(
      item['name'] as String,
      owner['login'] as String,
    );

    // レスポンスの検証
    expect(res, isA<GithubRepository>());
  });

  test('Github Exception', () async {
    final (adapter, client) = TestUtilDio.getGithubAPIMock();
    final file = await TestUtilAssets.readJson('github/exception.json');

    // モックの設定
    adapter.onGet('/search/repositories', (request) => request.reply(400, file));
    final res = client.searchRepositories(
      const GithubSearchRepositoriesParam(q: 'flutter'),
    );

    // レスポンスの検証
    expect(res, throwsA(isA<GitHubHttpException>()));
  });

  test('GithubAPI.setBearerToken でヘッダーが書き換わる ', () async {
    final dio = GitHubHttp.getDio();
    GithubAPI(client: GitHubHttp(dio: dio)).setBearerToken('token');

    expect(dio.options.headers['Authorization'], 'Bearer token');
  });
}
