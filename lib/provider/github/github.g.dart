// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getGitHubHttpHash() => r'ad9e00d16c2f2c7274085142bc22109b6c48dc48';

/// See also [getGitHubHttp].
@ProviderFor(getGitHubHttp)
final getGitHubHttpProvider = AutoDisposeProvider<Dio>.internal(
  getGitHubHttp,
  name: r'getGitHubHttpProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getGitHubHttpHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetGitHubHttpRef = AutoDisposeProviderRef<Dio>;
String _$getGithubAPIClientHash() =>
    r'3218b6c3d460cec238e2bf3bc34ef6babd1cfb3e';

/// See also [getGithubAPIClient].
@ProviderFor(getGithubAPIClient)
final getGithubAPIClientProvider = AutoDisposeProvider<GithubAPI>.internal(
  getGithubAPIClient,
  name: r'getGithubAPIClientProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getGithubAPIClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetGithubAPIClientRef = AutoDisposeProviderRef<GithubAPI>;
String _$getGithubReadmeHash() => r'464b6399667f67da7b93ee8a7a3b53a8b71f676b';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [getGithubReadme].
@ProviderFor(getGithubReadme)
const getGithubReadmeProvider = GetGithubReadmeFamily();

/// See also [getGithubReadme].
class GetGithubReadmeFamily extends Family<AsyncValue<String?>> {
  /// See also [getGithubReadme].
  const GetGithubReadmeFamily();

  /// See also [getGithubReadme].
  GetGithubReadmeProvider call(
    String owner,
    String repositoryName,
    String branch,
  ) {
    return GetGithubReadmeProvider(
      owner,
      repositoryName,
      branch,
    );
  }

  @override
  GetGithubReadmeProvider getProviderOverride(
    covariant GetGithubReadmeProvider provider,
  ) {
    return call(
      provider.owner,
      provider.repositoryName,
      provider.branch,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getGithubReadmeProvider';
}

/// See also [getGithubReadme].
class GetGithubReadmeProvider extends AutoDisposeFutureProvider<String?> {
  /// See also [getGithubReadme].
  GetGithubReadmeProvider(
    String owner,
    String repositoryName,
    String branch,
  ) : this._internal(
          (ref) => getGithubReadme(
            ref as GetGithubReadmeRef,
            owner,
            repositoryName,
            branch,
          ),
          from: getGithubReadmeProvider,
          name: r'getGithubReadmeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getGithubReadmeHash,
          dependencies: GetGithubReadmeFamily._dependencies,
          allTransitiveDependencies:
              GetGithubReadmeFamily._allTransitiveDependencies,
          owner: owner,
          repositoryName: repositoryName,
          branch: branch,
        );

  GetGithubReadmeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.owner,
    required this.repositoryName,
    required this.branch,
  }) : super.internal();

  final String owner;
  final String repositoryName;
  final String branch;

  @override
  Override overrideWith(
    FutureOr<String?> Function(GetGithubReadmeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetGithubReadmeProvider._internal(
        (ref) => create(ref as GetGithubReadmeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        owner: owner,
        repositoryName: repositoryName,
        branch: branch,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String?> createElement() {
    return _GetGithubReadmeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetGithubReadmeProvider &&
        other.owner == owner &&
        other.repositoryName == repositoryName &&
        other.branch == branch;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, owner.hashCode);
    hash = _SystemHash.combine(hash, repositoryName.hashCode);
    hash = _SystemHash.combine(hash, branch.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetGithubReadmeRef on AutoDisposeFutureProviderRef<String?> {
  /// The parameter `owner` of this provider.
  String get owner;

  /// The parameter `repositoryName` of this provider.
  String get repositoryName;

  /// The parameter `branch` of this provider.
  String get branch;
}

class _GetGithubReadmeProviderElement
    extends AutoDisposeFutureProviderElement<String?> with GetGithubReadmeRef {
  _GetGithubReadmeProviderElement(super.provider);

  @override
  String get owner => (origin as GetGithubReadmeProvider).owner;
  @override
  String get repositoryName =>
      (origin as GetGithubReadmeProvider).repositoryName;
  @override
  String get branch => (origin as GetGithubReadmeProvider).branch;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
