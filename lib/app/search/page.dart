import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_github_search_app/app/router.dart';
import 'package:simple_github_search_app/component/part/color_ball.dart';
import 'package:simple_github_search_app/component/part/custom_scroll_listener.dart';
import 'package:simple_github_search_app/component/part/repository_card.dart';
import 'package:simple_github_search_app/component/part/search_field_bar.dart';
import 'package:simple_github_search_app/component/part/select_menu_button.dart';
import 'package:simple_github_search_app/infrastructure/github/model/param.dart';
import 'package:simple_github_search_app/provider/github/repository.dart';
import 'package:simple_github_search_app/provider/github/search.dart';
import 'package:simple_github_search_app/provider/github/user.dart';
import 'package:simple_github_search_app/provider/linguist.dart';
import 'package:simple_github_search_app/util/enum.dart';

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
      body: CustomScrollListener(
        onEndReached: () async {
          final value = await ref.watch(githubSearchRepositoriesProvider(queryState.value, sortState.value).future);
          if (value.items.length != value.totalCount && context.mounted) {
            await ref.read(githubSearchRepositoriesProvider(queryState.value, sortState.value).notifier).nextPage();
          }
        },
        slivers: [
          SliverAppBar(
            floating: true,
            actions: [
              SelectMenuButton(
                items: [
                  for (final value in SearchRepositoriesSortParam.values)
                    PopupMenuItem(
                      child: Text(value.name),
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
                        description: Text(repo.description ?? ''),
                        avatarUrl: user.avatarUrl,
                        topics: repo.topics ?? [],
                        onTopicTap: (topic) {
                          context.router.push(SearchRoute(query: 'topic:$topic'));
                        },
                        onTap: () {
                          context.router.push(
                            RepositoryRoute(
                              owner: user.login,
                              name: repo.name,
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            if (lang != null)
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 4),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ...ref.watch(getLinguistColorProvider(lang)).when(
                                          data: (color) => [if (color != null) ColorBall(color: Color(color))],
                                          loading: () => [],
                                          error: (error, stackTrace) => [Text(error.toString())],
                                        ),
                                    Text(lang),
                                  ],
                                ),
                              ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.star_outline, size: 16),
                                  Text(repo.stargazersCount.toString()),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.remove_red_eye_outlined, size: 16),
                                  Text(repo.watchersCount.toString()),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.call_split_outlined, size: 16),
                                  Text(repo.forksCount.toString()),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.error_outline, size: 16),
                                  Text(repo.openIssuesCount.toString()),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    childCount: response.items.length,
                  ),
                ),
                if (response.items.length != response.totalCount)
                  const SliverToBoxAdapter(
                    child: Padding(padding: EdgeInsets.all(8), child: Center(child: CircularProgressIndicator())),
                  ),
              ];
            },
            loading: () {
              return [
                const SliverToBoxAdapter(
                  child: Padding(padding: EdgeInsets.all(8), child: Center(child: CircularProgressIndicator())),
                ),
              ];
            },
            error: (Object error, StackTrace stackTrace) {
              return [Center(child: Text('Error: $error'))];
            },
          ),
        ],
      ),
    );
  }
}
