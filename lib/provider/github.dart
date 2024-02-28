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
Future<GithubResponse<GithubRepository>> searchGithubRepositoriesRow(
  SearchGithubRepositoriesRowRef ref,
  GithubSearchRepositoriesParam param,
) async {
  logger.d('send request: $param');
  final client = ref.watch(getGithubAPIClientProvider);
  final response = await client.searchRepositories(param);
  return response;
}

@riverpod
class GithubSearchRepositoriesSearch extends _$GithubSearchRepositoriesSearch {
  @override
  FutureOr<GithubResponse<GithubRepository>> build(GithubSearchRepositoriesParam param) {
    return fetch(1);
  }

  Future<void> nextPage() async {
    state = await AsyncValue.guard(() async {
      final res = await fetch(getPage());
      if (res.items.last == state.requireValue.items.last) {
        return state.requireValue;
      } else {
        return res.copyWith(
          items: [...state.requireValue.items, ...res.items],
        );
      }
    });
  }

  int getPage() {
    return (state.value?.items.length ?? 0) ~/ param.perPage + 1;
  }

  Future<GithubResponse<GithubRepository>> fetch(int page) {
    final newParam = param.copyWith(page: page);
    return ref.watch(searchGithubRepositoriesRowProvider(newParam).future);
  }
}
