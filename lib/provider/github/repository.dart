import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simple_github_search_app/infrastructure/github/model/repository.dart';

part 'repository.g.dart';

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
    // todo: ここでリクエストを送る
    // ref.watch(githubRepositoriesStateProvider(userName, repositoryName).notifier).change(_);
    throw UnimplementedError();
  } else {
    return repoOrNull;
  }
}
