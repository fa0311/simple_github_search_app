import 'package:simple_github_search_app/infrastructure/github/src/http.dart';
import 'package:simple_github_search_app/infrastructure/github/src/model/repository.dart';
import 'package:simple_github_search_app/infrastructure/github/src/model/response.dart';

class GithubAPI {
  GithubAPI({GitHubHttp? client}) : client = client ?? GitHubHttp();
  final GitHubHttp client;

  Future<GithubResponse<GithubRepository>> searchRepositories({
    required String query,
    SearchRepositoriesSortParam? sort,
    SearchRepositoriesOrderParam? order,
    int? perPage,
    int? page,
  }) async {
    final response = await client.get(
      path: '/search/repositories',
      queryParameters: {
        'q': query,
        if (sort != null) 'sort': sort.name,
        if (order != null) 'order': order,
        if (perPage != null) 'per_page': perPage,
        if (page != null) 'page': page,
      },
    );
    final data = GithubResponse<GithubRepository>.fromJson(
      response,
      (p1) => GithubRepository.fromJson(p1! as Map<String, dynamic>),
    );

    return data;
  }
}

enum SearchRepositoriesSortParam {
  stars('stars'),
  forks('forks'),
  helpWantedIssues('help-wanted-issues'),
  updated('updated');

  const SearchRepositoriesSortParam(this.name);
  final String name;
}

enum SearchRepositoriesOrderParam {
  asc('asc'),
  desc('desc');

  const SearchRepositoriesOrderParam(this.name);
  final String name;
}
