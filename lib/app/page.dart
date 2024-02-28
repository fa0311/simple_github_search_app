import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_github_search_app/app/router.dart';
import 'package:simple_github_search_app/component/search_field_bar.dart';
import 'package:simple_github_search_app/component/select_button.dart';
import 'package:simple_github_search_app/infrastructure/github/model/param.dart';

@RoutePage()
class GithubSearchAppPage extends HookConsumerWidget {
  const GithubSearchAppPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sort = useState<SearchRepositoriesSortParam>(SearchRepositoriesSortParam.bestMatch);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            title: SearchFieldBar(
              onSubmitted: (value) {
                context.router.push(SearchRoute(query: value));
              },
            ),
            actions: [
              SelectMenuButton(
                items: [
                  for (final value in SearchRepositoriesSortParam.values)
                    PopupMenuItem(
                      value: value.name,
                      child: Text(value.name),
                    ),
                ],
                onChanged: (selected) {
                  sort.value = SearchRepositoriesSortParam.values.byName(selected);
                },
              ),
            ],
          ),
          const SliverFillRemaining(
            child: Center(
              child: Text('Hello, World!'),
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
    );
  }
}
