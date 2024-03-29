import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/infrastructure/github/api.dart';
import 'package:simple_github_search_app/infrastructure/github/http.dart';
import 'package:simple_github_search_app/infrastructure/github/model/param.dart';
import 'package:simple_github_search_app/infrastructure/github/model/repository.dart';
import 'package:simple_github_search_app/infrastructure/github/model/response.dart';
import 'package:simple_github_search_app/infrastructure/github/model/user.dart';

void main() {
  test('GetRepositories API', tags: ['github_api_test'], () async {
    final client = GithubAPI();
    final res1 = await client.getRepositories('flutter', 'flutter');
    expect(res1, isA<GithubRepository>());
    expect(res1.owner!.login, 'flutter');
    expect(res1.name, 'flutter');
  });

  test('GetUser API', tags: ['github_api_test'], () async {
    final client = GithubAPI();
    final res1 = await client.getUser('flutter');

    expect(res1, isA<GithubUser>());
    expect(res1.login, 'flutter');
  });

  test('SearchRepositories API', tags: ['github_api_test'], () async {
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

  test('GitHubHttpException Test', tags: ['github_api_test'], () async {
    final dio = GitHubHttp.getDio()..options.headers.update('X-GitHub-Api-Version', (_) => '1');
    final client = GithubAPI(client: GitHubHttp(dio: dio));
    final res1 = client.searchRepositories(
      const GithubSearchRepositoriesParam(q: 'flutter', page: 0),
    );
    expect(res1, throwsA(isA<GitHubHttpException>()));
    final res2 = client.searchRepositories(
      const GithubSearchRepositoriesParam(q: 'flutter', sort: SearchRepositoriesSortParam.stars, page: 0),
    );
    expect(res2, throwsA(isA<GitHubHttpException>()));
  });
}
