import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_github_search_app/app/router.dart';
import 'package:simple_github_search_app/component/part/custom_scroll_listener.dart';
import 'package:simple_github_search_app/component/part/repository_card.dart';
import 'package:simple_github_search_app/component/part/search_field_bar.dart';
import 'package:simple_github_search_app/component/part/select_menu_button.dart';
import 'package:simple_github_search_app/component/widget/error_log_view.dart';
import 'package:simple_github_search_app/component/widget/repository_status.dart';
import 'package:simple_github_search_app/infrastructure/github/model/param.dart';
import 'package:simple_github_search_app/provider/github/repository.dart';
import 'package:simple_github_search_app/provider/github/search.dart';
import 'package:simple_github_search_app/provider/github/user.dart';
import 'package:simple_github_search_app/util/enum.dart';

extension on SearchRepositoriesSortParam {
  String localizations(AppLocalizations localizations) {
    return switch (this) {
      SearchRepositoriesSortParam.bestMatch => localizations.searchSortBestMatch,
      SearchRepositoriesSortParam.stars => localizations.searchSortStars,
      SearchRepositoriesSortParam.forks => localizations.searchSortForks,
      SearchRepositoriesSortParam.updated => localizations.searchSortUpdated,
      SearchRepositoriesSortParam.helpWantedIssues => localizations.searchSortHelpWantedIssues,
    };
  }
}

@RoutePage()
class SearchPage extends HookConsumerWidget {
  const SearchPage({
    super.key,
    @queryParam this.query = '',
    @queryParam this.sort,
  });

  final String query;
  final String? sort;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final queryState = useState(query);
    final sortState =
        useState(SearchRepositoriesSortParam.values.byNameOrNull(sort) ?? SearchRepositoriesSortParam.bestMatch);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () {
          return ref.refresh(githubSearchRepositoriesProvider(queryState.value, sortState.value).future);
        },
        child: CustomScrollListener(
          onEndReached: () {
            ref
                .read(githubSearchRepositoriesLoadingStateProvider(queryState.value, sortState.value).notifier)
                .nextPage();
          },
          slivers: [
            SliverAppBar(
              floating: true,
              actions: [
                SelectMenuButton(
                  items: [
                    for (final value in SearchRepositoriesSortParam.values)
                      PopupMenuItem(
                        child: Text(value.localizations(AppLocalizations.of(context)!)),
                        onTap: () => sortState.value = value,
                      ),
                  ],
                ),
              ],
              title: SearchFieldBar(
                defaultText: query,
                onSubmitted: (valueState) async {
                  await context.router.push(SearchRoute(query: valueState));
                },
              ),
            ),
            ...ref.watch(githubSearchRepositoriesProvider(queryState.value, sortState.value)).when(
                  data: (response) {
                    return [
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            final (userName, repositoryName) = response.items[index];
                            final repo = ref.watch(githubRepositoriesStateProvider(userName, repositoryName))!;
                            final user = ref.watch(githubUserStateProvider(userName))!;

                            final lang = repo.language;
                            return RepositoryCard(
                              title: Text(repo.fullName),
                              description: Text(
                                repo.description ?? '',
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                              avatarUrl: user.avatarUrl,
                              topics: repo.topics ?? [],
                              onTopicTap: (topic) {
                                context.router.push(SearchRoute(query: 'topic:$topic'));
                              },
                              onTap: () {
                                context.router.push(
                                  RepositoryRoute(
                                    owner: user.login,
                                    repo: repo.name,
                                  ),
                                );
                              },
                              child: RepositoryStatus(
                                lang: lang,
                                stargazersCount: repo.stargazersCount,
                                watchersCount: repo.watchersCount,
                                forksCount: repo.forksCount,
                                openIssuesCount: repo.openIssuesCount,
                              ),
                            );
                          },
                          childCount: response.items.length,
                        ),
                      ),
                      if (response.items.length != response.totalCount)
                        const SliverToBoxAdapter(
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                        ),
                    ];
                  },
                  loading: () {
                    return [
                      const SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      ),
                    ];
                  },
                  error: (error, stackTrace) => [
                    SliverToBoxAdapter(
                      child: ErrorLogView(error, stackTrace),
                    ),
                  ],
                ),
          ],
        ),
      ),
    );
  }
}
