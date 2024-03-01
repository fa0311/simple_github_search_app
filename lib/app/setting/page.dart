import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_github_search_app/component/part/select_modal.dart';
import 'package:simple_github_search_app/provider/shared_preferences.dart';

@RoutePage()
class SettingPage extends HookConsumerWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Language'),
            onTap: () {
              SelectModalTile.show(context, [
                for (final language in AppLocalizations.supportedLocales)
                  Consumer(
                    builder: (context, ref, _) {
                      return ListTile(
                        title: Text(lookupAppLocalizations(language).language),
                        selected: ref.watch(languageSettingProvider).valueOrNull == language,
                        onTap: () {
                          ref.read(languageSettingProvider.notifier).set(language);
                        },
                      );
                    },
                  ),
              ]);
            },
          ),
          ListTile(
            title: const Text('Theme'),
            onTap: () {
              SelectModalTile.show(context, [
                for (final theme in ThemeMode.values)
                  Consumer(
                    builder: (context, ref, _) {
                      return ListTile(
                        title: Text(theme.name),
                        selected: ref.watch(themeSettingProvider).valueOrNull == theme,
                        onTap: () {
                          ref.read(themeSettingProvider.notifier).set(theme);
                        },
                      );
                    },
                  ),
              ]);
            },
          ),
        ],
      ),
    );
  }
}
