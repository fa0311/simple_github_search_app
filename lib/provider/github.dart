import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simple_github_search_app/infrastructure/github/api.dart';
import 'package:simple_github_search_app/infrastructure/github/model/param.dart';
import 'package:simple_github_search_app/infrastructure/github/model/repository.dart';
import 'package:simple_github_search_app/infrastructure/github/model/response.dart';
import 'package:simple_github_search_app/util/logger.dart';

part 'github.g.dart';

@riverpod
GithubAPI getGithubAPIClient(GetGithubAPIClientRef ref) => GithubAPI();

@riverpod
Future<GithubRepository> githubRepositories(
  GithubRepositoriesRef ref,
  String owner,
  String repositoryName,
) async {
  // TODO: owner, repository からリポジトリ情報を取得する
  throw UnimplementedError();
}

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

@riverpod
Future<GithubResponse<GithubRepository>> searchGithubRepositoriesRaw(
  SearchGithubRepositoriesRawRef ref,
  GithubSearchRepositoriesParam param,
) async {
  logger.d('send request: $param');
  final client = ref.watch(getGithubAPIClientProvider);
  final response = await client.searchRepositories(param);
  return response;
}

@riverpod
class GithubSearchRepositories extends _$GithubSearchRepositories {
  @override
  FutureOr<GithubResponse<GithubRepository>> build(GithubSearchRepositoriesParam param) {
    return fetch(1);
  }

  Future<void> nextPage() async {
    state = await AsyncValue.guard(() async {
      final res = await fetch(getPage());
      if (state.requireValue.items.last == res.items.last) {
        return state.requireValue;
      } else {
        return res.copyWith(
          items: [
            ...state.requireValue.items,
            ...res.items,
          ],
        );
      }
    });
  }

  int getPage() {
    return (state.value?.items.length ?? 0) ~/ param.perPage + 1;
  }

  Future<GithubResponse<GithubRepository>> fetch(int page) async {
    final newParam = param.copyWith(page: page);
    final res = await ref.watch(searchGithubRepositoriesRawProvider(newParam).future);
    return res;
  }
}
