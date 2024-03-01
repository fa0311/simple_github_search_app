import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_github_search_app/util/enum.dart';

part 'shared_preferences.g.dart';

@Riverpod(keepAlive: true)
Future<SharedPreferences> getSharedPreferences(GetSharedPreferencesRef ref) => SharedPreferences.getInstance();

@Riverpod(keepAlive: true)
class ThemeSetting extends _$ThemeSetting {
  static const key = 'theme';
  @override
  FutureOr<ThemeMode> build() async {
    final client = await ref.read(getSharedPreferencesProvider.future);
    final theme = client.getString(key);
    return ThemeMode.values.byNameOrNull(theme) ?? ThemeMode.system;
  }

  Future<void> set(ThemeMode value) async {
    state = AsyncValue.data(value);
    final client = await ref.read(getSharedPreferencesProvider.future);
    await client.setString(key, value.name);
  }
}

@Riverpod(keepAlive: true)
class LanguageSetting extends _$LanguageSetting {
  static const countyCodeKey = 'countryCode';
  static const languageCodeKey = 'language';

  @override
  FutureOr<Locale> build() async {
    final client = await ref.read(getSharedPreferencesProvider.future);
    final languageCode = client.getString(languageCodeKey);
    final countryCode = client.getString(countyCodeKey);
    return languageCode != null && countryCode != null ? Locale(languageCode, countryCode) : defaultValue();
  }

  Locale defaultValue() {
    final locale = WidgetsBinding.instance.platformDispatcher.locale;
    for (final language in AppLocalizations.supportedLocales) {
      if (language.languageCode == locale.languageCode && language.countryCode == locale.countryCode) {
        return language;
      }
    }
    return const Locale('en', 'US');
  }

  Future<void> set(Locale value) async {
    state = AsyncValue.data(value);
    final client = await ref.read(getSharedPreferencesProvider.future);
    await client.setString(languageCodeKey, value.languageCode);
    await client.setString(countyCodeKey, value.countryCode ?? '');
  }
}
