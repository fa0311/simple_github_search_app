import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simple_github_search_app/infrastructure/github/model/param.dart';
import 'package:simple_github_search_app/infrastructure/github/model/repository.dart';
import 'package:simple_github_search_app/infrastructure/github/model/response.dart';
import 'package:simple_github_search_app/provider/github/github.dart';
import 'package:simple_github_search_app/provider/github/model/search.dart';
import 'package:simple_github_search_app/provider/github/repository.dart';
import 'package:simple_github_search_app/provider/github/user.dart';
import 'package:simple_github_search_app/util/logger.dart';

part 'search.g.dart';

/// 検索リクエストのキャッシュを担うProvider
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

/// 検索リクエストを管理するProvider
@riverpod
class GithubSearchRepositories extends _$GithubSearchRepositories {
  @override
  FutureOr<GithubItems<({String userName, String repositoryName})>> build(GithubSearchRepositoriesParam param) {
    return fetch(1);
  }

  Future<void> nextPage() async {
    state = await AsyncValue.guard(() async {
      final res = await fetch(getPage());
      if (state.requireValue.items.last == res.items.last) {
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

  Future<GithubItems<({String userName, String repositoryName})>> fetch(int page) async {
    final newParam = param.copyWith(page: page);
    final res = await ref.watch(searchGithubRepositoriesRawProvider(newParam).future);

    for (final item in res.items) {
      final repositoryName = item.name;
      final userName = item.owner!.login;
      await ref.watch(githubRepositoriesOrNullProvider(userName, repositoryName).notifier).update((_) => item);
      await ref.watch(githubUserOrNullProvider(userName).notifier).update((_) => item.owner);
    }

    final items = res.items.map((e) => (owner: e.owner?.login, repositoryName: e.name));
    final newItems = items.whereType<({String userName, String repositoryName})>();

    return GithubItems(
      totalCount: res.totalCount,
      incompleteResults: res.incompleteResults,
      items: newItems.toList(),
    );
  }
}
