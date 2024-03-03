import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_github_search_app/infrastructure/key_value_storage/key_value_storage.dart';
import 'package:simple_github_search_app/infrastructure/key_value_storage/shared_preferences.dart';
import 'package:simple_github_search_app/util/enum.dart';

part 'shared_preferences.g.dart';

@Riverpod(keepAlive: true)
Future<KeyValueStorage> getSharedPreferences(GetSharedPreferencesRef ref) async {
  return SharedKeyValue(await SharedPreferences.getInstance());
}

@Riverpod(keepAlive: true)
class ThemeSetting extends _$ThemeSetting {
  static const key = 'theme';
  @override
  FutureOr<ThemeMode> build() async {
    final client = await ref.read(getSharedPreferencesProvider.future);
    final theme = await client.getString(key);
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
    final languageCode = await client.getString(languageCodeKey);
    final countryCode = await client.getString(countyCodeKey);
    return countryCode == null && countryCode == null ? defaultValue() : Locale(languageCode!, countryCode);
  }

  /// 端末の設定に合わせたデフォルトの言語を返す
  Locale defaultValue() {
    final locale = WidgetsBinding.instance.platformDispatcher.locale;
    for (final language in AppLocalizations.supportedLocales) {
      if (language.languageCode == locale.languageCode) {
        if (language.countryCode == null) {
          return language;
        }
        if (language.countryCode == locale.countryCode) {
          return language;
        }
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
