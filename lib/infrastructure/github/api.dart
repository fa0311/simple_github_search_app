import 'package:simple_github_search_app/infrastructure/github/http.dart';
import 'package:simple_github_search_app/infrastructure/github/model/param.dart';
import 'package:simple_github_search_app/infrastructure/github/model/repository.dart';
import 'package:simple_github_search_app/infrastructure/github/model/response.dart';
import 'package:simple_github_search_app/infrastructure/github/model/user.dart';

/// GitHub の API クライアント
class GithubAPI {
  GithubAPI({GitHubHttp? client}) : client = client ?? GitHubHttp();
  final GitHubHttp client;

  /// 認証トークンを設定する
  void setBearerToken(String? token) {
    client.setBearerToken(token);
  }

  /// リポジトリを取得するAPIを叩く
  Future<GithubRepository> getRepositories(String owner, String repo) async {
    assert(owner.isNotEmpty);
    assert(repo.isNotEmpty);

    final response = await client.get(path: '/repos/$owner/$repo');
    final data = GithubRepository.fromJson(response.data!);

    return data;
  }

  /// ユーザーを取得するAPIを叩く
  Future<GithubUser> getUser(String user) async {
    assert(user.isNotEmpty);

    final response = await client.get(path: '/users/$user');
    final data = GithubUser.fromJson(response.data!);

    return data;
  }

  /// リポジトリを検索するAPIを叩く
  Future<GithubResponse<GithubRepository>> searchRepositories(GithubSearchRepositoriesParam param) async {
    assert(param.q.isNotEmpty);
    assert(param.perPage <= 100);

    final response = await client.get(
      path: '/search/repositories',
      queryParameters: param.toJson(),
    );
    final data = GithubResponse<GithubRepository>.fromJson(
      response.data!,
      (p1) => GithubRepository.fromJson(p1! as Map<String, dynamic>),
    );

    return data;
  }
}
