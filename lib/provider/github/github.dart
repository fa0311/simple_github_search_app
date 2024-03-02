import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simple_github_search_app/infrastructure/github/api.dart';
import 'package:simple_github_search_app/infrastructure/github/http.dart';
import 'package:simple_github_search_app/util/logger.dart';

part 'github.g.dart';

@riverpod
Dio getGitHubHttp(GetGitHubHttpRef ref) {
  return GitHubHttp.getDio()..interceptors.add(dioLogger);
}

@riverpod
GithubAPI getGithubAPIClient(GetGithubAPIClientRef ref) {
  return GithubAPI(client: GitHubHttp(dio: ref.watch(getGitHubHttpProvider)));
}

@riverpod
Future<String?> getGithubReadme(
  GetGithubReadmeRef ref,
  String owner,
  String repositoryName,
  String branch,
) async {
  final client = ref.watch(getGitHubHttpProvider);
  final url = 'https://raw.githubusercontent.com/$owner/$repositoryName/$branch/README.md';
  try {
    final response = await client.getUri<String>(Uri.parse(url));
    return response.data;
  } on DioException catch (_) {
    return null;
  }
}
