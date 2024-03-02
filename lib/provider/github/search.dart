import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simple_github_search_app/infrastructure/github/model/param.dart';
import 'package:simple_github_search_app/infrastructure/github/model/repository.dart';
import 'package:simple_github_search_app/infrastructure/github/model/response.dart';
import 'package:simple_github_search_app/provider/github/github.dart';
import 'package:simple_github_search_app/provider/github/model/search.dart';
import 'package:simple_github_search_app/provider/github/repository.dart';
import 'package:simple_github_search_app/provider/github/user.dart';

part 'search.g.dart';

/// 検索リクエストのキャッシュを担うProvider
@riverpod
Future<GithubResponse<GithubRepository>> searchGithubRepositoriesRaw(
  SearchGithubRepositoriesRawRef ref,
  GithubSearchRepositoriesParam param,
) async {
  final client = ref.watch(getGithubAPIClientProvider);
  final response = await client.searchRepositories(param);
  return response;
}

/// 検索リクエストを管理するProvider
@riverpod
class GithubSearchRepositories extends _$GithubSearchRepositories {
  static const perPage = 30;

  @override
  FutureOr<GithubItems<(String, String)>> build(String query, SearchRepositoriesSortParam sort) {
    return fetch();
  }

  Future<void> nextPage() async {
    state = await AsyncValue.guard(() async {
      final res = await fetch();
      return res.copyWith(
        items: [...state.requireValue.items, ...res.items],
      );
    });
  }

  Future<GithubItems<(String, String)>> fetch() async {
    final param = GithubSearchRepositoriesParam(
      q: query,
      sort: sort,
      page: (state.value?.items.length ?? 0) ~/ perPage + 1,
    );
    final res = await ref.read(searchGithubRepositoriesRawProvider(param).future);

    for (final item in res.items) {
      final repositoryName = item.name;
      final userName = item.owner!.login;
      ref.read(githubRepositoriesStateProvider(userName, repositoryName).notifier).change(item);
      ref.read(githubUserStateProvider(userName).notifier).change(item.owner!);
    }

    final items = res.items.map((e) => (e.owner!.login, e.name));

    return GithubItems(
      totalCount: res.totalCount,
      incompleteResults: res.incompleteResults,
      items: items.toList(),
    );
  }
}

/// 検索リクエストのロード状態を管理するProvider
@Riverpod(keepAlive: true)
class GithubSearchRepositoriesLoadingState extends _$GithubSearchRepositoriesLoadingState {
  @override
  bool build(String query, SearchRepositoriesSortParam sort) {
    return false;
  }

  Future<void> nextPage() async {
    if (state) {
      return;
    }
    state = true;
    await ref.read(githubSearchRepositoriesProvider(query, sort).notifier).nextPage();
    state = false;
  }
}
