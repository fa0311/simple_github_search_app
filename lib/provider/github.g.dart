// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getGithubAPIClientHash() =>
    r'281605d46a2da6b97e07412a824238dc5fe57aa9';

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
String _$githubRepositoriesHash() =>
    r'3f8e3ef1c61ea9b9c31e15dd4d5cd5d57242e794';

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

/// See also [githubRepositories].
@ProviderFor(githubRepositories)
const githubRepositoriesProvider = GithubRepositoriesFamily();

/// See also [githubRepositories].
class GithubRepositoriesFamily extends Family<AsyncValue<GithubRepository>> {
  /// See also [githubRepositories].
  const GithubRepositoriesFamily();

  /// See also [githubRepositories].
  GithubRepositoriesProvider call(
    String owner,
    String repositoryName,
  ) {
    return GithubRepositoriesProvider(
      owner,
      repositoryName,
    );
  }

  @override
  GithubRepositoriesProvider getProviderOverride(
    covariant GithubRepositoriesProvider provider,
  ) {
    return call(
      provider.owner,
      provider.repositoryName,
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
  String? get name => r'githubRepositoriesProvider';
}

/// See also [githubRepositories].
class GithubRepositoriesProvider
    extends AutoDisposeFutureProvider<GithubRepository> {
  /// See also [githubRepositories].
  GithubRepositoriesProvider(
    String owner,
    String repositoryName,
  ) : this._internal(
          (ref) => githubRepositories(
            ref as GithubRepositoriesRef,
            owner,
            repositoryName,
          ),
          from: githubRepositoriesProvider,
          name: r'githubRepositoriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$githubRepositoriesHash,
          dependencies: GithubRepositoriesFamily._dependencies,
          allTransitiveDependencies:
              GithubRepositoriesFamily._allTransitiveDependencies,
          owner: owner,
          repositoryName: repositoryName,
        );

  GithubRepositoriesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.owner,
    required this.repositoryName,
  }) : super.internal();

  final String owner;
  final String repositoryName;

  @override
  Override overrideWith(
    FutureOr<GithubRepository> Function(GithubRepositoriesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GithubRepositoriesProvider._internal(
        (ref) => create(ref as GithubRepositoriesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        owner: owner,
        repositoryName: repositoryName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<GithubRepository> createElement() {
    return _GithubRepositoriesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GithubRepositoriesProvider &&
        other.owner == owner &&
        other.repositoryName == repositoryName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, owner.hashCode);
    hash = _SystemHash.combine(hash, repositoryName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GithubRepositoriesRef on AutoDisposeFutureProviderRef<GithubRepository> {
  /// The parameter `owner` of this provider.
  String get owner;

  /// The parameter `repositoryName` of this provider.
  String get repositoryName;
}

class _GithubRepositoriesProviderElement
    extends AutoDisposeFutureProviderElement<GithubRepository>
    with GithubRepositoriesRef {
  _GithubRepositoriesProviderElement(super.provider);

  @override
  String get owner => (origin as GithubRepositoriesProvider).owner;
  @override
  String get repositoryName =>
      (origin as GithubRepositoriesProvider).repositoryName;
}

String _$getGithubReadmeHash() => r'7495da313f3c1f0472a0fbde9810ab078126a521';

/// See also [getGithubReadme].
@ProviderFor(getGithubReadme)
const getGithubReadmeProvider = GetGithubReadmeFamily();

/// See also [getGithubReadme].
class GetGithubReadmeFamily extends Family<AsyncValue<String>> {
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
class GetGithubReadmeProvider extends AutoDisposeFutureProvider<String> {
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
    FutureOr<String> Function(GetGithubReadmeRef provider) create,
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
  AutoDisposeFutureProviderElement<String> createElement() {
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

mixin GetGithubReadmeRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `owner` of this provider.
  String get owner;

  /// The parameter `repositoryName` of this provider.
  String get repositoryName;

  /// The parameter `branch` of this provider.
  String get branch;
}

class _GetGithubReadmeProviderElement
    extends AutoDisposeFutureProviderElement<String> with GetGithubReadmeRef {
  _GetGithubReadmeProviderElement(super.provider);

  @override
  String get owner => (origin as GetGithubReadmeProvider).owner;
  @override
  String get repositoryName =>
      (origin as GetGithubReadmeProvider).repositoryName;
  @override
  String get branch => (origin as GetGithubReadmeProvider).branch;
}

String _$searchGithubRepositoriesRawHash() =>
    r'aa7b84f305bc128e65c0ce1efaef24e234d4ff03';

/// See also [searchGithubRepositoriesRaw].
@ProviderFor(searchGithubRepositoriesRaw)
const searchGithubRepositoriesRawProvider = SearchGithubRepositoriesRawFamily();

/// See also [searchGithubRepositoriesRaw].
class SearchGithubRepositoriesRawFamily
    extends Family<AsyncValue<GithubResponse<GithubRepository>>> {
  /// See also [searchGithubRepositoriesRaw].
  const SearchGithubRepositoriesRawFamily();

  /// See also [searchGithubRepositoriesRaw].
  SearchGithubRepositoriesRawProvider call(
    GithubSearchRepositoriesParam param,
  ) {
    return SearchGithubRepositoriesRawProvider(
      param,
    );
  }

  @override
  SearchGithubRepositoriesRawProvider getProviderOverride(
    covariant SearchGithubRepositoriesRawProvider provider,
  ) {
    return call(
      provider.param,
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
  String? get name => r'searchGithubRepositoriesRawProvider';
}

/// See also [searchGithubRepositoriesRaw].
class SearchGithubRepositoriesRawProvider
    extends AutoDisposeFutureProvider<GithubResponse<GithubRepository>> {
  /// See also [searchGithubRepositoriesRaw].
  SearchGithubRepositoriesRawProvider(
    GithubSearchRepositoriesParam param,
  ) : this._internal(
          (ref) => searchGithubRepositoriesRaw(
            ref as SearchGithubRepositoriesRawRef,
            param,
          ),
          from: searchGithubRepositoriesRawProvider,
          name: r'searchGithubRepositoriesRawProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchGithubRepositoriesRawHash,
          dependencies: SearchGithubRepositoriesRawFamily._dependencies,
          allTransitiveDependencies:
              SearchGithubRepositoriesRawFamily._allTransitiveDependencies,
          param: param,
        );

  SearchGithubRepositoriesRawProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.param,
  }) : super.internal();

  final GithubSearchRepositoriesParam param;

  @override
  Override overrideWith(
    FutureOr<GithubResponse<GithubRepository>> Function(
            SearchGithubRepositoriesRawRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchGithubRepositoriesRawProvider._internal(
        (ref) => create(ref as SearchGithubRepositoriesRawRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        param: param,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<GithubResponse<GithubRepository>>
      createElement() {
    return _SearchGithubRepositoriesRawProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchGithubRepositoriesRawProvider && other.param == param;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, param.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchGithubRepositoriesRawRef
    on AutoDisposeFutureProviderRef<GithubResponse<GithubRepository>> {
  /// The parameter `param` of this provider.
  GithubSearchRepositoriesParam get param;
}

class _SearchGithubRepositoriesRawProviderElement
    extends AutoDisposeFutureProviderElement<GithubResponse<GithubRepository>>
    with SearchGithubRepositoriesRawRef {
  _SearchGithubRepositoriesRawProviderElement(super.provider);

  @override
  GithubSearchRepositoriesParam get param =>
      (origin as SearchGithubRepositoriesRawProvider).param;
}

String _$githubSearchRepositoriesHash() =>
    r'3ccc440a7026c1c4f627eb06d530dd4d5dba2c22';

abstract class _$GithubSearchRepositories
    extends BuildlessAutoDisposeAsyncNotifier<
        GithubResponse<GithubRepository>> {
  late final GithubSearchRepositoriesParam param;

  FutureOr<GithubResponse<GithubRepository>> build(
    GithubSearchRepositoriesParam param,
  );
}

/// See also [GithubSearchRepositories].
@ProviderFor(GithubSearchRepositories)
const githubSearchRepositoriesProvider = GithubSearchRepositoriesFamily();

/// See also [GithubSearchRepositories].
class GithubSearchRepositoriesFamily
    extends Family<AsyncValue<GithubResponse<GithubRepository>>> {
  /// See also [GithubSearchRepositories].
  const GithubSearchRepositoriesFamily();

  /// See also [GithubSearchRepositories].
  GithubSearchRepositoriesProvider call(
    GithubSearchRepositoriesParam param,
  ) {
    return GithubSearchRepositoriesProvider(
      param,
    );
  }

  @override
  GithubSearchRepositoriesProvider getProviderOverride(
    covariant GithubSearchRepositoriesProvider provider,
  ) {
    return call(
      provider.param,
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
  String? get name => r'githubSearchRepositoriesProvider';
}

/// See also [GithubSearchRepositories].
class GithubSearchRepositoriesProvider
    extends AutoDisposeAsyncNotifierProviderImpl<GithubSearchRepositories,
        GithubResponse<GithubRepository>> {
  /// See also [GithubSearchRepositories].
  GithubSearchRepositoriesProvider(
    GithubSearchRepositoriesParam param,
  ) : this._internal(
          () => GithubSearchRepositories()..param = param,
          from: githubSearchRepositoriesProvider,
          name: r'githubSearchRepositoriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$githubSearchRepositoriesHash,
          dependencies: GithubSearchRepositoriesFamily._dependencies,
          allTransitiveDependencies:
              GithubSearchRepositoriesFamily._allTransitiveDependencies,
          param: param,
        );

  GithubSearchRepositoriesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.param,
  }) : super.internal();

  final GithubSearchRepositoriesParam param;

  @override
  FutureOr<GithubResponse<GithubRepository>> runNotifierBuild(
    covariant GithubSearchRepositories notifier,
  ) {
    return notifier.build(
      param,
    );
  }

  @override
  Override overrideWith(GithubSearchRepositories Function() create) {
    return ProviderOverride(
      origin: this,
      override: GithubSearchRepositoriesProvider._internal(
        () => create()..param = param,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        param: param,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GithubSearchRepositories,
      GithubResponse<GithubRepository>> createElement() {
    return _GithubSearchRepositoriesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GithubSearchRepositoriesProvider && other.param == param;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, param.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GithubSearchRepositoriesRef
    on AutoDisposeAsyncNotifierProviderRef<GithubResponse<GithubRepository>> {
  /// The parameter `param` of this provider.
  GithubSearchRepositoriesParam get param;
}

class _GithubSearchRepositoriesProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GithubSearchRepositories,
        GithubResponse<GithubRepository>> with GithubSearchRepositoriesRef {
  _GithubSearchRepositoriesProviderElement(super.provider);

  @override
  GithubSearchRepositoriesParam get param =>
      (origin as GithubSearchRepositoriesProvider).param;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
