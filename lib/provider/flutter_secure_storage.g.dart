// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flutter_secure_storage.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getSecureStorageHash() => r'0680b678f5e30fbd2fdc58534e8f6e6f2e79d388';

/// See also [getSecureStorage].
@ProviderFor(getSecureStorage)
final getSecureStorageProvider = FutureProvider<KeyValueStorage>.internal(
  getSecureStorage,
  name: r'getSecureStorageProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getSecureStorageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetSecureStorageRef = FutureProviderRef<KeyValueStorage>;
String _$githubTokenSettingHash() =>
    r'f62c21b210365e010194afde1edc479414df9c0a';

/// See also [GithubTokenSetting].
@ProviderFor(GithubTokenSetting)
final githubTokenSettingProvider =
    AsyncNotifierProvider<GithubTokenSetting, String?>.internal(
  GithubTokenSetting.new,
  name: r'githubTokenSettingProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$githubTokenSettingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GithubTokenSetting = AsyncNotifier<String?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
