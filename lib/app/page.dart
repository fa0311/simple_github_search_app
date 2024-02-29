import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_github_search_app/app/router.dart';
import 'package:simple_github_search_app/component/search_field_bar.dart';

@RoutePage()
class GithubSearchAppPage extends HookConsumerWidget {
  const GithubSearchAppPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            title: SearchFieldBar(
              onSubmitted: (value) async {
                await context.router.push(SearchRoute(query: value));
              },
            ),
            actions: const [],
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
