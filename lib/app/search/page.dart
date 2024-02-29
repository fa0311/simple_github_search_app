import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_github_search_app/app/router.dart';
import 'package:simple_github_search_app/component/color_ball.dart';
import 'package:simple_github_search_app/component/custom_scroll_listener.dart';
import 'package:simple_github_search_app/component/repository_card.dart';
import 'package:simple_github_search_app/component/search_field_bar.dart';
import 'package:simple_github_search_app/component/select_menu_button.dart';
import 'package:simple_github_search_app/infrastructure/github/model/param.dart';
import 'package:simple_github_search_app/infrastructure/linguist/linguist.dart';
import 'package:simple_github_search_app/provider/github.dart';
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
    final param = useState(
      GithubSearchRepositoriesParam(
        q: query,
        sort: SearchRepositoriesSortParam.values.byNameOrNull(sort) ?? SearchRepositoriesSortParam.bestMatch,
      ),
    );

    return Scaffold(
      body: CustomScrollListener(
        onEndReached: () async {
          final value = await ref.watch(githubSearchRepositoriesProvider(param.value).future);
          if (value.items.length != value.totalCount && context.mounted) {
            await ref.read(githubSearchRepositoriesProvider(param.value).notifier).nextPage();
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
                      onTap: () => param.value = param.value.copyWith(sort: value),
                    ),
                ],
              ),
            ],
            title: SearchFieldBar(
              defaultText: param.value.q,
              onSubmitted: (value) async {
                await context.router.push(SearchRoute(query: value));
              },
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                final data = ref.watch(githubSearchRepositoriesProvider(param.value)).requireValue;
                final item = data.items[index];
                final lang = item.language;
                final linguistValue = lang == null ? null : ref.watch(getLinguistLanguagesProvider(lang)).valueOrNull;
                final langColor = linguistValue?.color == null ? null : Color(Linguist.toColor(linguistValue!.color!));

                return RepositoryCard(
                  title: Text(item.fullName),
                  description: Text(item.description ?? ''),
                  topics: item.topics ?? [],
                  onTopicTap: (topic) {
                    context.router.push(SearchRoute(query: 'topic:$topic'));
                  },
                  onTap: () {
                    context.router.push(
                      RepositoryRoute(
                        owner: item.owner!.login,
                        name: item.name,
                        repository: item,
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (langColor != null) ColorBall(color: langColor),
                            if (lang != null) Text(lang),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.star_outline, size: 16),
                            Text(item.stargazersCount.toString()),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.remove_red_eye_outlined, size: 16),
                            Text(item.watchersCount.toString()),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.call_split_outlined, size: 16),
                            Text(item.forksCount.toString()),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.error_outline, size: 16),
                            Text(item.openIssuesCount.toString()),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: ref.watch(githubSearchRepositoriesProvider(param.value)).maybeWhen(
                    data: (response) => response.items.length,
                    orElse: () => 0,
                  ),
            ),
          ),
          SliverToBoxAdapter(
            child: ref.watch(githubSearchRepositoriesProvider(param.value)).when(
              data: (response) {
                if (response.items.length != response.totalCount) {
                  return const Padding(padding: EdgeInsets.all(8), child: Center(child: CircularProgressIndicator()));
                }
                return null;
              },
              loading: () {
                return const Padding(padding: EdgeInsets.all(8), child: Center(child: CircularProgressIndicator()));
              },
              error: (Object error, StackTrace stackTrace) {
                return Center(child: Text('Error: $error'));
              },
            ),
          ),
        ],
      ),
    );
  }
}
