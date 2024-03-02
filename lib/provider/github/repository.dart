import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simple_github_search_app/infrastructure/github/model/repository.dart';
import 'package:simple_github_search_app/provider/github/github.dart';
import 'package:simple_github_search_app/util/logger.dart';

part 'repository.g.dart';

/// リクエストのキャッシュを担うProvider
@riverpod
Future<GithubRepository> getGithubRepositoryRaw(
  GetGithubRepositoryRawRef ref,
  String userName,
  String repositoryName,
) async {
  logger.d('send request: $userName/$repositoryName');
  final client = ref.watch(getGithubAPIClientProvider);
  final response = await client.getRepositories(userName, repositoryName);
  return response;
}

/// リポジトリの情報を管理するProvider
@Riverpod(keepAlive: true)
class GithubRepositoriesState extends _$GithubRepositoriesState {
  @override
  GithubRepository? build(String userName, String repositoryName) {
    return null;
  }

  // ignore: use_setters_to_change_properties
  void change(GithubRepository newState) {
    state = newState;
  }
}

/// 情報がなかったらリクエストを送るProvider
@riverpod
Future<GithubRepository> getGithubRepository(GetGithubRepositoryRef ref, String userName, String repositoryName) async {
  final repoOrNull = ref.watch(githubRepositoriesStateProvider(userName, repositoryName));
  if (repoOrNull == null) {
    final response = await ref.read(getGithubRepositoryRawProvider(userName, repositoryName).future);
    ref.watch(githubRepositoriesStateProvider(userName, repositoryName).notifier).change(response);
    return response;
  } else {
    return repoOrNull;
  }
}
