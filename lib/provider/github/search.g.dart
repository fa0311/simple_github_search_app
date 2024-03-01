// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchGithubRepositoriesRawHash() =>
    r'aa7b84f305bc128e65c0ce1efaef24e234d4ff03';

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

/// 検索リクエストのキャッシュを担うProvider
///
/// Copied from [searchGithubRepositoriesRaw].
@ProviderFor(searchGithubRepositoriesRaw)
const searchGithubRepositoriesRawProvider = SearchGithubRepositoriesRawFamily();

/// 検索リクエストのキャッシュを担うProvider
///
/// Copied from [searchGithubRepositoriesRaw].
class SearchGithubRepositoriesRawFamily
    extends Family<AsyncValue<GithubResponse<GithubRepository>>> {
  /// 検索リクエストのキャッシュを担うProvider
  ///
  /// Copied from [searchGithubRepositoriesRaw].
  const SearchGithubRepositoriesRawFamily();

  /// 検索リクエストのキャッシュを担うProvider
  ///
  /// Copied from [searchGithubRepositoriesRaw].
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

/// 検索リクエストのキャッシュを担うProvider
///
/// Copied from [searchGithubRepositoriesRaw].
class SearchGithubRepositoriesRawProvider
    extends AutoDisposeFutureProvider<GithubResponse<GithubRepository>> {
  /// 検索リクエストのキャッシュを担うProvider
  ///
  /// Copied from [searchGithubRepositoriesRaw].
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
    r'94fb6c445eea91844c1674d979e05f61bf2bee0e';

abstract class _$GithubSearchRepositories
    extends BuildlessAutoDisposeAsyncNotifier<
        GithubItems<({String userName, String repositoryName})>> {
  late final GithubSearchRepositoriesParam param;

  FutureOr<GithubItems<({String userName, String repositoryName})>> build(
    GithubSearchRepositoriesParam param,
  );
}

/// 検索リクエストを管理するProvider
///
/// Copied from [GithubSearchRepositories].
@ProviderFor(GithubSearchRepositories)
const githubSearchRepositoriesProvider = GithubSearchRepositoriesFamily();

/// 検索リクエストを管理するProvider
///
/// Copied from [GithubSearchRepositories].
class GithubSearchRepositoriesFamily extends Family<
    AsyncValue<GithubItems<({String userName, String repositoryName})>>> {
  /// 検索リクエストを管理するProvider
  ///
  /// Copied from [GithubSearchRepositories].
  const GithubSearchRepositoriesFamily();

  /// 検索リクエストを管理するProvider
  ///
  /// Copied from [GithubSearchRepositories].
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

/// 検索リクエストを管理するProvider
///
/// Copied from [GithubSearchRepositories].
class GithubSearchRepositoriesProvider
    extends AutoDisposeAsyncNotifierProviderImpl<GithubSearchRepositories,
        GithubItems<({String userName, String repositoryName})>> {
  /// 検索リクエストを管理するProvider
  ///
  /// Copied from [GithubSearchRepositories].
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
  FutureOr<GithubItems<({String userName, String repositoryName})>>
      runNotifierBuild(
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
      GithubItems<({String userName, String repositoryName})>> createElement() {
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

mixin GithubSearchRepositoriesRef on AutoDisposeAsyncNotifierProviderRef<
    GithubItems<({String userName, String repositoryName})>> {
  /// The parameter `param` of this provider.
  GithubSearchRepositoriesParam get param;
}

class _GithubSearchRepositoriesProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GithubSearchRepositories,
        GithubItems<({String userName, String repositoryName})>>
    with GithubSearchRepositoriesRef {
  _GithubSearchRepositoriesProviderElement(super.provider);

  @override
  GithubSearchRepositoriesParam get param =>
      (origin as GithubSearchRepositoriesProvider).param;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
