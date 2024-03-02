// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getGitHubHttpHash() => r'584dd9374d14b8babf03dfd3c1a7955febfb37eb';

/// Github にリクエストを送るための Dio クライアント
///
/// Copied from [getGitHubHttp].
@ProviderFor(getGitHubHttp)
final getGitHubHttpProvider = Provider<Dio>.internal(
  getGitHubHttp,
  name: r'getGitHubHttpProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getGitHubHttpHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetGitHubHttpRef = ProviderRef<Dio>;
String _$getGithubAPIClientHash() =>
    r'791b3512666a3f1de7026faf30b013dc065ad30f';

/// Github API クライアント
///
/// Copied from [getGithubAPIClient].
@ProviderFor(getGithubAPIClient)
final getGithubAPIClientProvider = Provider<GithubAPI>.internal(
  getGithubAPIClient,
  name: r'getGithubAPIClientProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getGithubAPIClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetGithubAPIClientRef = ProviderRef<GithubAPI>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
