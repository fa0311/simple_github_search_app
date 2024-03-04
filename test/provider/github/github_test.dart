import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/infrastructure/github/model/param.dart';
import 'package:simple_github_search_app/infrastructure/github/model/repository.dart';
import 'package:simple_github_search_app/infrastructure/github/model/user.dart';
import 'package:simple_github_search_app/provider/github/github.dart';
import 'package:simple_github_search_app/provider/github/model/search.dart';
import 'package:simple_github_search_app/provider/github/repository.dart';
import 'package:simple_github_search_app/provider/github/search.dart';
import 'package:simple_github_search_app/provider/github/user.dart';

import '../../test_util/assets.dart';
import '../../test_util/dio.dart';
import '../../test_util/provider_container.dart';

void main() {
  test('リポジトリを検索する', () async {
    final (adapter, client) = TestUtilDio.getGithubAPIMock();
    final file = TestUtilAssets.readJson('github/search_repositories.json');

    // モックの設定
    adapter.onGet('/search/repositories', (request) => request.reply(200, file));

    final container = createContainer(
      overrides: [
        getGithubAPIClientProvider.overrideWith(
          (provider) {
            return client;
          },
        ),
      ],
    );

    final res =
        await container.read(githubSearchRepositoriesProvider('flutter', SearchRepositoriesSortParam.bestMatch).future);
    expect(res, isA<GithubItems<(String, String)>>());

    final res2 = container
        .read(githubSearchRepositoriesLoadingStateProvider('flutter', SearchRepositoriesSortParam.bestMatch).notifier)
        .nextPage();
    expect(res2, isA<void>());
  });

  test('リポジトリを取得する', () async {
    final (adapter, client) = TestUtilDio.getGithubAPIMock();
    final file = TestUtilAssets.readJson('github/repository.json');

    // モックの設定
    adapter.onGet('/repos/flutter/flutter', (request) => request.reply(200, file));

    final container = createContainer(
      overrides: [
        getGithubAPIClientProvider.overrideWith(
          (provider) {
            return client;
          },
        ),
      ],
    );

    final res = await container.read(getGithubRepositoryProvider('flutter', 'flutter').future);
    expect(res, isA<GithubRepository>());
  });

  test('ユーザーを取得する', () async {
    final (adapter, client) = TestUtilDio.getGithubAPIMock();
    final file = TestUtilAssets.readJson('github/user.json');

    // モックの設定
    adapter.onGet('/users/flutter', (request) => request.reply(200, file));

    final container = createContainer(
      overrides: [
        getGithubAPIClientProvider.overrideWith(
          (provider) {
            return client;
          },
        ),
      ],
    );

    final res = await container.read(getGithubUserProvider('flutter').future);
    expect(res, isA<GithubUser>());
  });
}
