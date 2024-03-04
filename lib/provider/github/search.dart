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
  final client = await ref.watch(getGithubAPIClientProvider.future);
  final response = await client.searchRepositories(param);
  return response;
}

/// 検索リクエストを管理するProvider
@riverpod
class GithubSearchRepositories extends _$GithubSearchRepositories {
  static const perPage = 30;

  @override
  FutureOr<GithubItems<(String, String)>> build(String query, SearchRepositoriesSortParam sort) async {
    return await fetch(1);
  }

  /// 次のページを取得する
  Future<void> nextPage() async {
    state = await AsyncValue.guard(() async {
      final res = await fetch(null);
      return res.copyWith(
        items: [...state.requireValue.items, ...res.items],
      );
    });
  }

  /// 依存関係を更新する
  void updateDependencies(GithubResponse<GithubRepository> res) {
    for (final item in res.items) {
      final repositoryName = item.name;
      final userName = item.owner!.login;
      ref.read(githubRepositoriesStateProvider(userName, repositoryName).notifier).change(item);
      ref.read(githubUserStateProvider(userName).notifier).change(item.owner!);
    }
  }

  /// [state] からページ数を計算する
  int getPage() {
    return (state.value?.items.length ?? 0) ~/ perPage + 1;
  }

  /// 検索リクエストを実行する
  Future<GithubItems<(String, String)>> fetch(int? page) async {
    final param = GithubSearchRepositoriesParam(
      q: query,
      sort: sort,
      page: page ?? getPage(),
    );
    final res = await ref.read(searchGithubRepositoriesRawProvider(param).future);

    updateDependencies(res);
    final items = res.items.map((e) => (e.owner!.login, e.name));

    return GithubItems(
      totalCount: res.totalCount,
      incompleteResults: res.incompleteResults,
      items: items.toList(),
    );
  }
}

/// [GithubSearchRepositories] の [GithubSearchRepositories.nextPage] を呼び出す Provider
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
