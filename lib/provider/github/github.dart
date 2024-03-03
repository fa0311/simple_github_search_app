import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simple_github_search_app/infrastructure/github/api.dart';
import 'package:simple_github_search_app/infrastructure/github/http.dart';
import 'package:simple_github_search_app/provider/flutter_secure_storage.dart';
import 'package:simple_github_search_app/util/logger.dart';

part 'github.g.dart';

/// Github にリクエストを送るための Dio クライアント
@Riverpod(keepAlive: true)
Dio getGitHubHttp(GetGitHubHttpRef ref) {
  return GitHubHttp.getDio()..interceptors.add(dioLogger);
}

/// Github API クライアント
@Riverpod(keepAlive: true)
Future<GithubAPI> getGithubAPIClient(GetGithubAPIClientRef ref) async {
  final bearerToken = await ref.watch(githubTokenSettingProvider.future);
  return GithubAPI(client: GitHubHttp(dio: ref.watch(getGitHubHttpProvider)))..setBearerToken(bearerToken);
}
