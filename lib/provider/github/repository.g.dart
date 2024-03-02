// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getGithubRepositoryRawHash() =>
    r'fccd06f7057d1aa42531ba0debd1075613205e85';

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

/// リクエストのキャッシュを担うProvider
///
/// Copied from [getGithubRepositoryRaw].
@ProviderFor(getGithubRepositoryRaw)
const getGithubRepositoryRawProvider = GetGithubRepositoryRawFamily();

/// リクエストのキャッシュを担うProvider
///
/// Copied from [getGithubRepositoryRaw].
class GetGithubRepositoryRawFamily
    extends Family<AsyncValue<GithubRepository>> {
  /// リクエストのキャッシュを担うProvider
  ///
  /// Copied from [getGithubRepositoryRaw].
  const GetGithubRepositoryRawFamily();

  /// リクエストのキャッシュを担うProvider
  ///
  /// Copied from [getGithubRepositoryRaw].
  GetGithubRepositoryRawProvider call(
    String userName,
    String repositoryName,
  ) {
    return GetGithubRepositoryRawProvider(
      userName,
      repositoryName,
    );
  }

  @override
  GetGithubRepositoryRawProvider getProviderOverride(
    covariant GetGithubRepositoryRawProvider provider,
  ) {
    return call(
      provider.userName,
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
  String? get name => r'getGithubRepositoryRawProvider';
}

/// リクエストのキャッシュを担うProvider
///
/// Copied from [getGithubRepositoryRaw].
class GetGithubRepositoryRawProvider
    extends AutoDisposeFutureProvider<GithubRepository> {
  /// リクエストのキャッシュを担うProvider
  ///
  /// Copied from [getGithubRepositoryRaw].
  GetGithubRepositoryRawProvider(
    String userName,
    String repositoryName,
  ) : this._internal(
          (ref) => getGithubRepositoryRaw(
            ref as GetGithubRepositoryRawRef,
            userName,
            repositoryName,
          ),
          from: getGithubRepositoryRawProvider,
          name: r'getGithubRepositoryRawProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getGithubRepositoryRawHash,
          dependencies: GetGithubRepositoryRawFamily._dependencies,
          allTransitiveDependencies:
              GetGithubRepositoryRawFamily._allTransitiveDependencies,
          userName: userName,
          repositoryName: repositoryName,
        );

  GetGithubRepositoryRawProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userName,
    required this.repositoryName,
  }) : super.internal();

  final String userName;
  final String repositoryName;

  @override
  Override overrideWith(
    FutureOr<GithubRepository> Function(GetGithubRepositoryRawRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetGithubRepositoryRawProvider._internal(
        (ref) => create(ref as GetGithubRepositoryRawRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userName: userName,
        repositoryName: repositoryName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<GithubRepository> createElement() {
    return _GetGithubRepositoryRawProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetGithubRepositoryRawProvider &&
        other.userName == userName &&
        other.repositoryName == repositoryName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userName.hashCode);
    hash = _SystemHash.combine(hash, repositoryName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetGithubRepositoryRawRef
    on AutoDisposeFutureProviderRef<GithubRepository> {
  /// The parameter `userName` of this provider.
  String get userName;

  /// The parameter `repositoryName` of this provider.
  String get repositoryName;
}

class _GetGithubRepositoryRawProviderElement
    extends AutoDisposeFutureProviderElement<GithubRepository>
    with GetGithubRepositoryRawRef {
  _GetGithubRepositoryRawProviderElement(super.provider);

  @override
  String get userName => (origin as GetGithubRepositoryRawProvider).userName;
  @override
  String get repositoryName =>
      (origin as GetGithubRepositoryRawProvider).repositoryName;
}

String _$getGithubRepositoryHash() =>
    r'943cc959898a2b282dc25aa5177e6639226191e9';

/// [GithubRepositoriesState] の [GithubRepositoriesState.get] を呼び出すProvider
///
/// Copied from [getGithubRepository].
@ProviderFor(getGithubRepository)
const getGithubRepositoryProvider = GetGithubRepositoryFamily();

/// [GithubRepositoriesState] の [GithubRepositoriesState.get] を呼び出すProvider
///
/// Copied from [getGithubRepository].
class GetGithubRepositoryFamily extends Family<AsyncValue<GithubRepository>> {
  /// [GithubRepositoriesState] の [GithubRepositoriesState.get] を呼び出すProvider
  ///
  /// Copied from [getGithubRepository].
  const GetGithubRepositoryFamily();

  /// [GithubRepositoriesState] の [GithubRepositoriesState.get] を呼び出すProvider
  ///
  /// Copied from [getGithubRepository].
  GetGithubRepositoryProvider call(
    String userName,
    String repositoryName,
  ) {
    return GetGithubRepositoryProvider(
      userName,
      repositoryName,
    );
  }

  @override
  GetGithubRepositoryProvider getProviderOverride(
    covariant GetGithubRepositoryProvider provider,
  ) {
    return call(
      provider.userName,
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
  String? get name => r'getGithubRepositoryProvider';
}

/// [GithubRepositoriesState] の [GithubRepositoriesState.get] を呼び出すProvider
///
/// Copied from [getGithubRepository].
class GetGithubRepositoryProvider
    extends AutoDisposeFutureProvider<GithubRepository> {
  /// [GithubRepositoriesState] の [GithubRepositoriesState.get] を呼び出すProvider
  ///
  /// Copied from [getGithubRepository].
  GetGithubRepositoryProvider(
    String userName,
    String repositoryName,
  ) : this._internal(
          (ref) => getGithubRepository(
            ref as GetGithubRepositoryRef,
            userName,
            repositoryName,
          ),
          from: getGithubRepositoryProvider,
          name: r'getGithubRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getGithubRepositoryHash,
          dependencies: GetGithubRepositoryFamily._dependencies,
          allTransitiveDependencies:
              GetGithubRepositoryFamily._allTransitiveDependencies,
          userName: userName,
          repositoryName: repositoryName,
        );

  GetGithubRepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userName,
    required this.repositoryName,
  }) : super.internal();

  final String userName;
  final String repositoryName;

  @override
  Override overrideWith(
    FutureOr<GithubRepository> Function(GetGithubRepositoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetGithubRepositoryProvider._internal(
        (ref) => create(ref as GetGithubRepositoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userName: userName,
        repositoryName: repositoryName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<GithubRepository> createElement() {
    return _GetGithubRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetGithubRepositoryProvider &&
        other.userName == userName &&
        other.repositoryName == repositoryName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userName.hashCode);
    hash = _SystemHash.combine(hash, repositoryName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetGithubRepositoryRef on AutoDisposeFutureProviderRef<GithubRepository> {
  /// The parameter `userName` of this provider.
  String get userName;

  /// The parameter `repositoryName` of this provider.
  String get repositoryName;
}

class _GetGithubRepositoryProviderElement
    extends AutoDisposeFutureProviderElement<GithubRepository>
    with GetGithubRepositoryRef {
  _GetGithubRepositoryProviderElement(super.provider);

  @override
  String get userName => (origin as GetGithubRepositoryProvider).userName;
  @override
  String get repositoryName =>
      (origin as GetGithubRepositoryProvider).repositoryName;
}

String _$githubRepositoriesStateHash() =>
    r'32b93141641668ec25975049be6af9488ac1a567';

abstract class _$GithubRepositoriesState
    extends BuildlessNotifier<GithubRepository?> {
  late final String userName;
  late final String repositoryName;

  GithubRepository? build(
    String userName,
    String repositoryName,
  );
}

/// [GithubRepository] の情報を管理するProvider
///
/// Copied from [GithubRepositoriesState].
@ProviderFor(GithubRepositoriesState)
const githubRepositoriesStateProvider = GithubRepositoriesStateFamily();

/// [GithubRepository] の情報を管理するProvider
///
/// Copied from [GithubRepositoriesState].
class GithubRepositoriesStateFamily extends Family<GithubRepository?> {
  /// [GithubRepository] の情報を管理するProvider
  ///
  /// Copied from [GithubRepositoriesState].
  const GithubRepositoriesStateFamily();

  /// [GithubRepository] の情報を管理するProvider
  ///
  /// Copied from [GithubRepositoriesState].
  GithubRepositoriesStateProvider call(
    String userName,
    String repositoryName,
  ) {
    return GithubRepositoriesStateProvider(
      userName,
      repositoryName,
    );
  }

  @override
  GithubRepositoriesStateProvider getProviderOverride(
    covariant GithubRepositoriesStateProvider provider,
  ) {
    return call(
      provider.userName,
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
  String? get name => r'githubRepositoriesStateProvider';
}

/// [GithubRepository] の情報を管理するProvider
///
/// Copied from [GithubRepositoriesState].
class GithubRepositoriesStateProvider
    extends NotifierProviderImpl<GithubRepositoriesState, GithubRepository?> {
  /// [GithubRepository] の情報を管理するProvider
  ///
  /// Copied from [GithubRepositoriesState].
  GithubRepositoriesStateProvider(
    String userName,
    String repositoryName,
  ) : this._internal(
          () => GithubRepositoriesState()
            ..userName = userName
            ..repositoryName = repositoryName,
          from: githubRepositoriesStateProvider,
          name: r'githubRepositoriesStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$githubRepositoriesStateHash,
          dependencies: GithubRepositoriesStateFamily._dependencies,
          allTransitiveDependencies:
              GithubRepositoriesStateFamily._allTransitiveDependencies,
          userName: userName,
          repositoryName: repositoryName,
        );

  GithubRepositoriesStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userName,
    required this.repositoryName,
  }) : super.internal();

  final String userName;
  final String repositoryName;

  @override
  GithubRepository? runNotifierBuild(
    covariant GithubRepositoriesState notifier,
  ) {
    return notifier.build(
      userName,
      repositoryName,
    );
  }

  @override
  Override overrideWith(GithubRepositoriesState Function() create) {
    return ProviderOverride(
      origin: this,
      override: GithubRepositoriesStateProvider._internal(
        () => create()
          ..userName = userName
          ..repositoryName = repositoryName,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userName: userName,
        repositoryName: repositoryName,
      ),
    );
  }

  @override
  NotifierProviderElement<GithubRepositoriesState, GithubRepository?>
      createElement() {
    return _GithubRepositoriesStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GithubRepositoriesStateProvider &&
        other.userName == userName &&
        other.repositoryName == repositoryName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userName.hashCode);
    hash = _SystemHash.combine(hash, repositoryName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GithubRepositoriesStateRef on NotifierProviderRef<GithubRepository?> {
  /// The parameter `userName` of this provider.
  String get userName;

  /// The parameter `repositoryName` of this provider.
  String get repositoryName;
}

class _GithubRepositoriesStateProviderElement
    extends NotifierProviderElement<GithubRepositoriesState, GithubRepository?>
    with GithubRepositoriesStateRef {
  _GithubRepositoriesStateProviderElement(super.provider);

  @override
  String get userName => (origin as GithubRepositoriesStateProvider).userName;
  @override
  String get repositoryName =>
      (origin as GithubRepositoriesStateProvider).repositoryName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
