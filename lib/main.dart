import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_github_search_app/app/router.dart';

void main() {
  runApp(const ProviderScope(child: GithubSearchApp()));
}

class GithubSearchApp extends HookConsumerWidget {
  const GithubSearchApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = useMemoized(AppRouter.new, []);
    return MaterialApp.router(
      title: 'GithubSearchAppPage',
      routerConfig: appRouter.config(),
    );
  }
}
