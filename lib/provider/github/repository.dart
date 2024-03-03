import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simple_github_search_app/infrastructure/github/model/repository.dart';
import 'package:simple_github_search_app/provider/github/github.dart';

part 'repository.g.dart';

/// リクエストのキャッシュを担うProvider
@riverpod
Future<GithubRepository> getGithubRepositoryRaw(
  GetGithubRepositoryRawRef ref,
  String userName,
  String repositoryName,
) async {
  final client = await ref.watch(getGithubAPIClientProvider.future);
  final response = await client.getRepositories(userName, repositoryName);
  return response;
}

/// [GithubRepository] の情報を管理するProvider
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

  Future<void> reload() async {
    state = await ref.refresh(getGithubRepositoryRawProvider(userName, repositoryName).future);
  }

  Future<GithubRepository> get() async {
    state ??= await ref.refresh(getGithubRepositoryRawProvider(userName, repositoryName).future);
    return state!;
  }
}

/// [GithubRepositoriesState] の [GithubRepositoriesState.get] を呼び出すProvider
@riverpod
Future<GithubRepository> getGithubRepository(GetGithubRepositoryRef ref, String userName, String repositoryName) async {
  return ref.watch(githubRepositoriesStateProvider(userName, repositoryName).notifier).get();
}
