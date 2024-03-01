import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simple_github_search_app/infrastructure/github/model/repository.dart';

part 'repository.g.dart';

/// リポジトリの情報を管理するProvider
@riverpod
class GithubRepositoriesOrNull extends _$GithubRepositoriesOrNull {
  @override
  FutureOr<GithubRepository?> build(String userName, String repositoryName) async {
    return null;
  }

  Future<void> fetch() async {
    state = await AsyncValue.guard(() async {
      // `TODO`: owner, repository からリポジトリ情報を取得する
      throw UnimplementedError();
    });
  }
}

/// 情報がなかったらリクエストを送るProvider
@riverpod
Future<GithubRepository> getGithubRepository(GetGithubRepositoryRef ref, String userName, String repositoryName) async {
  final repoOrNull = await ref.watch(githubRepositoriesOrNullProvider(userName, repositoryName).future);
  if (repoOrNull == null) {
    await ref.read(githubRepositoriesOrNullProvider(userName, repositoryName).notifier).fetch();
    final repo = await ref.watch(githubRepositoriesOrNullProvider(userName, repositoryName).future);
    return repo!;
  } else {
    return repoOrNull;
  }
}
