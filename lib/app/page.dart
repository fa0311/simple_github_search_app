import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_github_search_app/component/repository_card.dart';
import 'package:simple_github_search_app/infrastructure/github/model/param.dart';
import 'package:simple_github_search_app/provider/github.dart';

@RoutePage()
class GithubSearchAppPage extends HookConsumerWidget {
  const GithubSearchAppPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useScrollController();
    final param = useState(const GithubSearchRepositoriesParam(q: 'flutter'));

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
          const SliverAppBar(
            floating: true,
            title: Text('Title'),
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
      drawer: const Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
