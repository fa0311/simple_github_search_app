// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_preferences.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getSharedPreferencesHash() =>
    r'47285dab981cfe03d288e8f195e3f27254cd20e4';

/// See also [getSharedPreferences].
@ProviderFor(getSharedPreferences)
final getSharedPreferencesProvider = FutureProvider<SharedPreferences>.internal(
  getSharedPreferences,
  name: r'getSharedPreferencesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getSharedPreferencesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetSharedPreferencesRef = FutureProviderRef<SharedPreferences>;
String _$themeSettingHash() => r'd4ec8fa75ba2ed6365eeba4889434b3dbe3cde5f';

/// See also [ThemeSetting].
@ProviderFor(ThemeSetting)
final themeSettingProvider =
    AsyncNotifierProvider<ThemeSetting, ThemeMode>.internal(
  ThemeSetting.new,
  name: r'themeSettingProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$themeSettingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ThemeSetting = AsyncNotifier<ThemeMode>;
String _$languageSettingHash() => r'ea5f793b70450493e1611538fe037bba21160fd2';

/// See also [LanguageSetting].
@ProviderFor(LanguageSetting)
final languageSettingProvider =
    AsyncNotifierProvider<LanguageSetting, Locale>.internal(
  LanguageSetting.new,
  name: r'languageSettingProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$languageSettingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LanguageSetting = AsyncNotifier<Locale>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
