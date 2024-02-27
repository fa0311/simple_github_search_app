import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/infrastructure/github/src/api.dart';
import 'package:simple_github_search_app/infrastructure/github/src/http.dart';
import 'package:simple_github_search_app/infrastructure/github/src/model/repository.dart';
import 'package:simple_github_search_app/infrastructure/github/src/model/response.dart';

void main() {
  test('searchRepositories API', tags: ['github_api_test'], () async {
    final client = GithubAPI();
    final res1 = await client.searchRepositories(query: 'flutter');
    expect(res1, isA<GithubResponse<GithubRepository>>());

    final res2 = await client.searchRepositories(query: 'flutter', sort: SearchRepositoriesSortParam.stars);
    expect(res2, isA<GithubResponse<GithubRepository>>());
  });

  test('GitHubHttpException', tags: ['github_api_test'], () async {
    final dio = GitHubHttp.getDio()..options.headers.update('X-GitHub-Api-Version', (_) => '1');
    final client = GithubAPI(
      client: GitHubHttp(
        dio: dio,
      ),
    );

    expect(
      client.searchRepositories(query: 'flutter'),
      throwsA(isA<GitHubHttpException>()),
    );

    expect(
      client.searchRepositories(query: 'flutter', sort: SearchRepositoriesSortParam.stars),
      throwsA(isA<GitHubHttpException>()),
    );
  });
}
