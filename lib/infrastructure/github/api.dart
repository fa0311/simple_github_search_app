import 'package:simple_github_search_app/infrastructure/github/http.dart';
import 'package:simple_github_search_app/infrastructure/github/model/param.dart';
import 'package:simple_github_search_app/infrastructure/github/model/repository.dart';
import 'package:simple_github_search_app/infrastructure/github/model/response.dart';

class GithubAPI {
  GithubAPI({GitHubHttp? client}) : client = client ?? GitHubHttp();
  final GitHubHttp client;

  Future<GithubResponse<GithubRepository>> searchRepositories(
    GithubSearchRepositoriesParam param,
  ) async {
    assert(param.q.isNotEmpty);
    assert(param.perPage <= 100);

    final response = await client.get(
      path: '/search/repositories',
      queryParameters: param.toJson(),
    );
    final data = GithubResponse<GithubRepository>.fromJson(
      response,
      (p1) => GithubRepository.fromJson(p1! as Map<String, dynamic>),
    );

    return data;
  }
}
