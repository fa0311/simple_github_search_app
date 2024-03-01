import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_github_search_app/app/router.dart';
import 'package:simple_github_search_app/provider/shared_preferences.dart';
import 'package:simple_github_search_app/util/constant.dart';

void main() {
  runApp(const ProviderScope(child: GithubSearchApp()));
}

class GithubSearchApp extends HookConsumerWidget {
  const GithubSearchApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = useMemoized(AppRouter.new, []);
    final locale = ref.watch(languageSettingProvider);
    final theme = ref.watch(themeSettingProvider);

    return MaterialApp.router(
      title: Constant.appName,
      debugShowCheckedModeBanner: Constant.debugShowCheckedModeBanner,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: locale.valueOrNull,
      theme: switch (theme.valueOrNull) {
        ThemeMode.dark => ThemeData.dark(),
        _ => ThemeData.light(),
      },
      darkTheme: switch (theme.valueOrNull) {
        ThemeMode.light => ThemeData.light(),
        _ => ThemeData.dark(),
      },
      routerConfig: appRouter.config(),
    );
  }
}
