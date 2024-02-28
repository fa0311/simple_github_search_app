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
String _$searchGithubRepositoriesRowHash() =>
    r'9cd2e9e27de0bda0311bcb1e2ed4f25cae055f01';

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

/// See also [searchGithubRepositoriesRow].
@ProviderFor(searchGithubRepositoriesRow)
const searchGithubRepositoriesRowProvider = SearchGithubRepositoriesRowFamily();

/// See also [searchGithubRepositoriesRow].
class SearchGithubRepositoriesRowFamily
    extends Family<AsyncValue<GithubResponse<GithubRepository>>> {
  /// See also [searchGithubRepositoriesRow].
  const SearchGithubRepositoriesRowFamily();

  /// See also [searchGithubRepositoriesRow].
  SearchGithubRepositoriesRowProvider call(
    GithubSearchRepositoriesParam param,
  ) {
    return SearchGithubRepositoriesRowProvider(
      param,
    );
  }

  @override
  SearchGithubRepositoriesRowProvider getProviderOverride(
    covariant SearchGithubRepositoriesRowProvider provider,
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
  String? get name => r'searchGithubRepositoriesRowProvider';
}

/// See also [searchGithubRepositoriesRow].
class SearchGithubRepositoriesRowProvider
    extends AutoDisposeFutureProvider<GithubResponse<GithubRepository>> {
  /// See also [searchGithubRepositoriesRow].
  SearchGithubRepositoriesRowProvider(
    GithubSearchRepositoriesParam param,
  ) : this._internal(
          (ref) => searchGithubRepositoriesRow(
            ref as SearchGithubRepositoriesRowRef,
            param,
          ),
          from: searchGithubRepositoriesRowProvider,
          name: r'searchGithubRepositoriesRowProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchGithubRepositoriesRowHash,
          dependencies: SearchGithubRepositoriesRowFamily._dependencies,
          allTransitiveDependencies:
              SearchGithubRepositoriesRowFamily._allTransitiveDependencies,
          param: param,
        );

  SearchGithubRepositoriesRowProvider._internal(
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
            SearchGithubRepositoriesRowRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchGithubRepositoriesRowProvider._internal(
        (ref) => create(ref as SearchGithubRepositoriesRowRef),
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
    return _SearchGithubRepositoriesRowProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchGithubRepositoriesRowProvider && other.param == param;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, param.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchGithubRepositoriesRowRef
    on AutoDisposeFutureProviderRef<GithubResponse<GithubRepository>> {
  /// The parameter `param` of this provider.
  GithubSearchRepositoriesParam get param;
}

class _SearchGithubRepositoriesRowProviderElement
    extends AutoDisposeFutureProviderElement<GithubResponse<GithubRepository>>
    with SearchGithubRepositoriesRowRef {
  _SearchGithubRepositoriesRowProviderElement(super.provider);

  @override
  GithubSearchRepositoriesParam get param =>
      (origin as SearchGithubRepositoriesRowProvider).param;
}

String _$githubSearchRepositoriesSearchHash() =>
    r'850d9e511ae05cd9a40092bc80bfff39c618191e';

abstract class _$GithubSearchRepositoriesSearch
    extends BuildlessAutoDisposeAsyncNotifier<
        GithubResponse<GithubRepository>> {
  late final GithubSearchRepositoriesParam param;

  FutureOr<GithubResponse<GithubRepository>> build(
    GithubSearchRepositoriesParam param,
  );
}

/// See also [GithubSearchRepositoriesSearch].
@ProviderFor(GithubSearchRepositoriesSearch)
const githubSearchRepositoriesSearchProvider =
    GithubSearchRepositoriesSearchFamily();

/// See also [GithubSearchRepositoriesSearch].
class GithubSearchRepositoriesSearchFamily
    extends Family<AsyncValue<GithubResponse<GithubRepository>>> {
  /// See also [GithubSearchRepositoriesSearch].
  const GithubSearchRepositoriesSearchFamily();

  /// See also [GithubSearchRepositoriesSearch].
  GithubSearchRepositoriesSearchProvider call(
    GithubSearchRepositoriesParam param,
  ) {
    return GithubSearchRepositoriesSearchProvider(
      param,
    );
  }

  @override
  GithubSearchRepositoriesSearchProvider getProviderOverride(
    covariant GithubSearchRepositoriesSearchProvider provider,
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
  String? get name => r'githubSearchRepositoriesSearchProvider';
}

/// See also [GithubSearchRepositoriesSearch].
class GithubSearchRepositoriesSearchProvider
    extends AutoDisposeAsyncNotifierProviderImpl<GithubSearchRepositoriesSearch,
        GithubResponse<GithubRepository>> {
  /// See also [GithubSearchRepositoriesSearch].
  GithubSearchRepositoriesSearchProvider(
    GithubSearchRepositoriesParam param,
  ) : this._internal(
          () => GithubSearchRepositoriesSearch()..param = param,
          from: githubSearchRepositoriesSearchProvider,
          name: r'githubSearchRepositoriesSearchProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$githubSearchRepositoriesSearchHash,
          dependencies: GithubSearchRepositoriesSearchFamily._dependencies,
          allTransitiveDependencies:
              GithubSearchRepositoriesSearchFamily._allTransitiveDependencies,
          param: param,
        );

  GithubSearchRepositoriesSearchProvider._internal(
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
    covariant GithubSearchRepositoriesSearch notifier,
  ) {
    return notifier.build(
      param,
    );
  }

  @override
  Override overrideWith(GithubSearchRepositoriesSearch Function() create) {
    return ProviderOverride(
      origin: this,
      override: GithubSearchRepositoriesSearchProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<GithubSearchRepositoriesSearch,
      GithubResponse<GithubRepository>> createElement() {
    return _GithubSearchRepositoriesSearchProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GithubSearchRepositoriesSearchProvider &&
        other.param == param;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, param.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GithubSearchRepositoriesSearchRef
    on AutoDisposeAsyncNotifierProviderRef<GithubResponse<GithubRepository>> {
  /// The parameter `param` of this provider.
  GithubSearchRepositoriesParam get param;
}

class _GithubSearchRepositoriesSearchProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        GithubSearchRepositoriesSearch, GithubResponse<GithubRepository>>
    with GithubSearchRepositoriesSearchRef {
  _GithubSearchRepositoriesSearchProviderElement(super.provider);

  @override
  GithubSearchRepositoriesParam get param =>
      (origin as GithubSearchRepositoriesSearchProvider).param;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
