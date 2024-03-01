import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simple_github_search_app/infrastructure/github/api.dart';

part 'github.g.dart';

@riverpod
GithubAPI getGithubAPIClient(GetGithubAPIClientRef ref) => GithubAPI();

@riverpod
Future<String> getGithubReadme(
  GetGithubReadmeRef ref,
  String owner,
  String repositoryName,
  String branch,
) async {
  final client = ref.watch(getGithubAPIClientProvider);
  final url = 'https://raw.githubusercontent.com/$owner/$repositoryName/$branch/README.md';
  final response = await client.client.dio.get<String>(url);
  return response.data!;
}
