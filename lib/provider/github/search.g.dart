// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchGithubRepositoriesRawHash() =>
    r'284b6f0ff71327da084839027e058de332bd5b52';

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
    r'ba24536fd492da66d3821f1fe712414cd33bd8a9';

abstract class _$GithubSearchRepositories
    extends BuildlessAutoDisposeAsyncNotifier<GithubItems<(String, String)>> {
  late final String query;
  late final SearchRepositoriesSortParam sort;

  FutureOr<GithubItems<(String, String)>> build(
    String query,
    SearchRepositoriesSortParam sort,
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
class GithubSearchRepositoriesFamily
    extends Family<AsyncValue<GithubItems<(String, String)>>> {
  /// 検索リクエストを管理するProvider
  ///
  /// Copied from [GithubSearchRepositories].
  const GithubSearchRepositoriesFamily();

  /// 検索リクエストを管理するProvider
  ///
  /// Copied from [GithubSearchRepositories].
  GithubSearchRepositoriesProvider call(
    String query,
    SearchRepositoriesSortParam sort,
  ) {
    return GithubSearchRepositoriesProvider(
      query,
      sort,
    );
  }

  @override
  GithubSearchRepositoriesProvider getProviderOverride(
    covariant GithubSearchRepositoriesProvider provider,
  ) {
    return call(
      provider.query,
      provider.sort,
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
        GithubItems<(String, String)>> {
  /// 検索リクエストを管理するProvider
  ///
  /// Copied from [GithubSearchRepositories].
  GithubSearchRepositoriesProvider(
    String query,
    SearchRepositoriesSortParam sort,
  ) : this._internal(
          () => GithubSearchRepositories()
            ..query = query
            ..sort = sort,
          from: githubSearchRepositoriesProvider,
          name: r'githubSearchRepositoriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$githubSearchRepositoriesHash,
          dependencies: GithubSearchRepositoriesFamily._dependencies,
          allTransitiveDependencies:
              GithubSearchRepositoriesFamily._allTransitiveDependencies,
          query: query,
          sort: sort,
        );

  GithubSearchRepositoriesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
    required this.sort,
  }) : super.internal();

  final String query;
  final SearchRepositoriesSortParam sort;

  @override
  FutureOr<GithubItems<(String, String)>> runNotifierBuild(
    covariant GithubSearchRepositories notifier,
  ) {
    return notifier.build(
      query,
      sort,
    );
  }

  @override
  Override overrideWith(GithubSearchRepositories Function() create) {
    return ProviderOverride(
      origin: this,
      override: GithubSearchRepositoriesProvider._internal(
        () => create()
          ..query = query
          ..sort = sort,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
        sort: sort,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GithubSearchRepositories,
      GithubItems<(String, String)>> createElement() {
    return _GithubSearchRepositoriesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GithubSearchRepositoriesProvider &&
        other.query == query &&
        other.sort == sort;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, sort.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GithubSearchRepositoriesRef
    on AutoDisposeAsyncNotifierProviderRef<GithubItems<(String, String)>> {
  /// The parameter `query` of this provider.
  String get query;

  /// The parameter `sort` of this provider.
  SearchRepositoriesSortParam get sort;
}

class _GithubSearchRepositoriesProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GithubSearchRepositories,
        GithubItems<(String, String)>> with GithubSearchRepositoriesRef {
  _GithubSearchRepositoriesProviderElement(super.provider);

  @override
  String get query => (origin as GithubSearchRepositoriesProvider).query;
  @override
  SearchRepositoriesSortParam get sort =>
      (origin as GithubSearchRepositoriesProvider).sort;
}

String _$githubSearchRepositoriesLoadingStateHash() =>
    r'8a8b0a2347e5dc451b8603f72cac589d7cb8480e';

abstract class _$GithubSearchRepositoriesLoadingState
    extends BuildlessNotifier<bool> {
  late final String query;
  late final SearchRepositoriesSortParam sort;

  bool build(
    String query,
    SearchRepositoriesSortParam sort,
  );
}

/// [GithubSearchRepositories] の [GithubSearchRepositories.nextPage] を呼び出す Provider
///
/// Copied from [GithubSearchRepositoriesLoadingState].
@ProviderFor(GithubSearchRepositoriesLoadingState)
const githubSearchRepositoriesLoadingStateProvider =
    GithubSearchRepositoriesLoadingStateFamily();

/// [GithubSearchRepositories] の [GithubSearchRepositories.nextPage] を呼び出す Provider
///
/// Copied from [GithubSearchRepositoriesLoadingState].
class GithubSearchRepositoriesLoadingStateFamily extends Family<bool> {
  /// [GithubSearchRepositories] の [GithubSearchRepositories.nextPage] を呼び出す Provider
  ///
  /// Copied from [GithubSearchRepositoriesLoadingState].
  const GithubSearchRepositoriesLoadingStateFamily();

  /// [GithubSearchRepositories] の [GithubSearchRepositories.nextPage] を呼び出す Provider
  ///
  /// Copied from [GithubSearchRepositoriesLoadingState].
  GithubSearchRepositoriesLoadingStateProvider call(
    String query,
    SearchRepositoriesSortParam sort,
  ) {
    return GithubSearchRepositoriesLoadingStateProvider(
      query,
      sort,
    );
  }

  @override
  GithubSearchRepositoriesLoadingStateProvider getProviderOverride(
    covariant GithubSearchRepositoriesLoadingStateProvider provider,
  ) {
    return call(
      provider.query,
      provider.sort,
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
  String? get name => r'githubSearchRepositoriesLoadingStateProvider';
}

/// [GithubSearchRepositories] の [GithubSearchRepositories.nextPage] を呼び出す Provider
///
/// Copied from [GithubSearchRepositoriesLoadingState].
class GithubSearchRepositoriesLoadingStateProvider
    extends NotifierProviderImpl<GithubSearchRepositoriesLoadingState, bool> {
  /// [GithubSearchRepositories] の [GithubSearchRepositories.nextPage] を呼び出す Provider
  ///
  /// Copied from [GithubSearchRepositoriesLoadingState].
  GithubSearchRepositoriesLoadingStateProvider(
    String query,
    SearchRepositoriesSortParam sort,
  ) : this._internal(
          () => GithubSearchRepositoriesLoadingState()
            ..query = query
            ..sort = sort,
          from: githubSearchRepositoriesLoadingStateProvider,
          name: r'githubSearchRepositoriesLoadingStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$githubSearchRepositoriesLoadingStateHash,
          dependencies:
              GithubSearchRepositoriesLoadingStateFamily._dependencies,
          allTransitiveDependencies: GithubSearchRepositoriesLoadingStateFamily
              ._allTransitiveDependencies,
          query: query,
          sort: sort,
        );

  GithubSearchRepositoriesLoadingStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
    required this.sort,
  }) : super.internal();

  final String query;
  final SearchRepositoriesSortParam sort;

  @override
  bool runNotifierBuild(
    covariant GithubSearchRepositoriesLoadingState notifier,
  ) {
    return notifier.build(
      query,
      sort,
    );
  }

  @override
  Override overrideWith(
      GithubSearchRepositoriesLoadingState Function() create) {
    return ProviderOverride(
      origin: this,
      override: GithubSearchRepositoriesLoadingStateProvider._internal(
        () => create()
          ..query = query
          ..sort = sort,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
        sort: sort,
      ),
    );
  }

  @override
  NotifierProviderElement<GithubSearchRepositoriesLoadingState, bool>
      createElement() {
    return _GithubSearchRepositoriesLoadingStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GithubSearchRepositoriesLoadingStateProvider &&
        other.query == query &&
        other.sort == sort;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, sort.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GithubSearchRepositoriesLoadingStateRef on NotifierProviderRef<bool> {
  /// The parameter `query` of this provider.
  String get query;

  /// The parameter `sort` of this provider.
  SearchRepositoriesSortParam get sort;
}

class _GithubSearchRepositoriesLoadingStateProviderElement
    extends NotifierProviderElement<GithubSearchRepositoriesLoadingState, bool>
    with GithubSearchRepositoriesLoadingStateRef {
  _GithubSearchRepositoriesLoadingStateProviderElement(super.provider);

  @override
  String get query =>
      (origin as GithubSearchRepositoriesLoadingStateProvider).query;
  @override
  SearchRepositoriesSortParam get sort =>
      (origin as GithubSearchRepositoriesLoadingStateProvider).sort;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
