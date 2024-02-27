import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/infrastructure/github/api.dart';
import 'package:simple_github_search_app/infrastructure/github/http.dart';
import 'package:simple_github_search_app/infrastructure/github/model/param.dart';
import 'package:simple_github_search_app/infrastructure/github/model/repository.dart';
import 'package:simple_github_search_app/infrastructure/github/model/response.dart';

void main() {
  test('searchRepositories API', tags: ['github_api_test'], () async {
    final client = GithubAPI();
    final res1 = await client.searchRepositories(
      const GithubSearchRepositoriesParam(q: 'flutter'),
    );
    expect(res1, isA<GithubResponse<GithubRepository>>());
    final res2 = await client.searchRepositories(
      const GithubSearchRepositoriesParam(q: 'flutter', sort: SearchRepositoriesSortParam.stars),
    );
    expect(res2, isA<GithubResponse<GithubRepository>>());
  });

  test('GitHubHttpException', tags: ['github_api_test'], () async {
    final dio = GitHubHttp.getDio()..options.headers.update('X-GitHub-Api-Version', (_) => '1');
    final client = GithubAPI(
      client: GitHubHttp(
        dio: dio,
      ),
    );
    final res1 = client.searchRepositories(
      const GithubSearchRepositoriesParam(q: 'flutter'),
    );
    expect(res1, throwsA(isA<GitHubHttpException>()));
    final res2 = client.searchRepositories(
      const GithubSearchRepositoriesParam(q: 'flutter', sort: SearchRepositoriesSortParam.stars),
    );
    expect(res2, throwsA(isA<GitHubHttpException>()));
  });
}
