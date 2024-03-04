import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_github_search_app/component/part/select_modal.dart';
import 'package:simple_github_search_app/component/part/text_field_dialog.dart';
import 'package:simple_github_search_app/provider/key_value_storage/secure_storage.dart';
import 'package:simple_github_search_app/provider/key_value_storage/storage.dart';

extension on ThemeMode {
  String localizations(AppLocalizations localizations) {
    return switch (this) {
      ThemeMode.system => localizations.settingThemeSystem,
      ThemeMode.light => localizations.settingThemeLight,
      ThemeMode.dark => localizations.settingThemeDark,
    };
  }
}

@RoutePage()
class SettingPage extends HookConsumerWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.settingPageTitle),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(AppLocalizations.of(context)!.settingLanguage),
            onTap: () {
              SelectModalTile.show(
                context,
                items: [
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
                ],
              );
            },
          ),
          ListTile(
            title: Text(AppLocalizations.of(context)!.settingTheme),
            onTap: () {
              SelectModalTile.show(
                context,
                items: [
                  for (final theme in ThemeMode.values)
                    Consumer(
                      builder: (context, ref, _) {
                        return ListTile(
                          title: Text(theme.localizations(AppLocalizations.of(context)!)),
                          selected: ref.watch(themeSettingProvider).valueOrNull == theme,
                          onTap: () {
                            ref.read(themeSettingProvider.notifier).set(theme);
                          },
                        );
                      },
                    ),
                ],
              );
            },
          ),
          ListTile(
            title: Text(AppLocalizations.of(context)!.settingGithubToken),
            onTap: () async {
              final data = await ref.read(githubTokenSettingProvider.future);
              if (context.mounted) {
                TextFieldDialog.show(
                  title: Text(AppLocalizations.of(context)!.settingGithubToken),
                  context,
                  obscureText: true,
                  onSubmitted: (value) async {
                    if (value.isEmpty) {
                      await ref.read(githubTokenSettingProvider.notifier).remove();
                      if (context.mounted) {
                        await context.router.pop();
                      }
                      return null;
                    }
                    if (!value.startsWith('ghp_')) {
                      return AppLocalizations.of(context)!.settingGithubTokenInvalid;
                    }
                    if (value.length != 40) {
                      return AppLocalizations.of(context)!.settingGithubTokenInvalid;
                    }
                    await ref.read(githubTokenSettingProvider.notifier).set(value);
                    if (context.mounted) {
                      await context.router.pop();
                    }
                    return null;
                  },
                  defaultText: data ?? '',
                  label: Text(AppLocalizations.of(context)!.settingGithubTokenLabel),
                  button: Text(AppLocalizations.of(context)!.settingGithubTokenSave),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
