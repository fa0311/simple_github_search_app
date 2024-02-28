import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_github_search_app/component/repository_card.dart';
import 'package:simple_github_search_app/component/search_field_bar.dart';
import 'package:simple_github_search_app/infrastructure/github/model/param.dart';
import 'package:simple_github_search_app/provider/github.dart';
import 'package:simple_github_search_app/util/enum.dart';

@RoutePage()
class SearchPage extends HookConsumerWidget {
  const SearchPage({
    super.key,
    @pathParam required this.query,
    @pathParam this.sort,
    @pathParam this.order,
  });

  final String query;
  final String? sort;
  final String? order;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useScrollController();
    final param = useState(
      GithubSearchRepositoriesParam(
        q: query,
        sort: sort == null ? null : SearchRepositoriesSortParam.values.byNameOrNull(sort!),
        order: order == null ? null : SearchRepositoriesOrderParam.values.byNameOrNull(order!),
      ),
    );

    useEffect(
      () {
        controller.addListener(() async {
          if (controller.position.maxScrollExtent - 100 < controller.offset) {
            final value = await ref.watch(githubSearchRepositoriesSearchProvider(param.value).future);
            if (value.items.length != value.totalCount && context.mounted) {
              await ref.read(githubSearchRepositoriesSearchProvider(param.value).notifier).nextPage();
            }
          }
        });
        return controller.dispose;
      },
      const [],
    );

    return Scaffold(
      body: CustomScrollView(
        controller: controller,
        slivers: [
          SliverAppBar(
            floating: true,
            title: SearchFieldBar(
              defaultText: param.value.q,
              onSubmitted: (value) {
                param.value = param.value.copyWith(q: value);
              },
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                final data = ref.watch(githubSearchRepositoriesSearchProvider(param.value)).requireValue;
                return RepositoryCard(
                  repository: data.items[index],
                );
              },
              childCount: ref.watch(githubSearchRepositoriesSearchProvider(param.value)).maybeWhen(
                    data: (response) => response.items.length,
                    orElse: () => 0,
                  ),
            ),
          ),
          SliverToBoxAdapter(
            child: ref.watch(githubSearchRepositoriesSearchProvider(param.value)).when(
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
