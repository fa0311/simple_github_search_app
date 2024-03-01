// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getGithubRepositoryHash() =>
    r'905e1b34927b6f2d10bb252566d8e7d071354e90';

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

/// 情報がなかったらリクエストを送るProvider
///
/// Copied from [getGithubRepository].
@ProviderFor(getGithubRepository)
const getGithubRepositoryProvider = GetGithubRepositoryFamily();

/// 情報がなかったらリクエストを送るProvider
///
/// Copied from [getGithubRepository].
class GetGithubRepositoryFamily extends Family<AsyncValue<GithubRepository>> {
  /// 情報がなかったらリクエストを送るProvider
  ///
  /// Copied from [getGithubRepository].
  const GetGithubRepositoryFamily();

  /// 情報がなかったらリクエストを送るProvider
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

/// 情報がなかったらリクエストを送るProvider
///
/// Copied from [getGithubRepository].
class GetGithubRepositoryProvider
    extends AutoDisposeFutureProvider<GithubRepository> {
  /// 情報がなかったらリクエストを送るProvider
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

String _$githubRepositoriesOrNullHash() =>
    r'9db3442f602a2ac1eeef4a4b97f38e7d9693d792';

abstract class _$GithubRepositoriesOrNull
    extends BuildlessAutoDisposeAsyncNotifier<GithubRepository?> {
  late final String userName;
  late final String repositoryName;

  FutureOr<GithubRepository?> build(
    String userName,
    String repositoryName,
  );
}

/// リポジトリの情報を管理するProvider
///
/// Copied from [GithubRepositoriesOrNull].
@ProviderFor(GithubRepositoriesOrNull)
const githubRepositoriesOrNullProvider = GithubRepositoriesOrNullFamily();

/// リポジトリの情報を管理するProvider
///
/// Copied from [GithubRepositoriesOrNull].
class GithubRepositoriesOrNullFamily
    extends Family<AsyncValue<GithubRepository?>> {
  /// リポジトリの情報を管理するProvider
  ///
  /// Copied from [GithubRepositoriesOrNull].
  const GithubRepositoriesOrNullFamily();

  /// リポジトリの情報を管理するProvider
  ///
  /// Copied from [GithubRepositoriesOrNull].
  GithubRepositoriesOrNullProvider call(
    String userName,
    String repositoryName,
  ) {
    return GithubRepositoriesOrNullProvider(
      userName,
      repositoryName,
    );
  }

  @override
  GithubRepositoriesOrNullProvider getProviderOverride(
    covariant GithubRepositoriesOrNullProvider provider,
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
  String? get name => r'githubRepositoriesOrNullProvider';
}

/// リポジトリの情報を管理するProvider
///
/// Copied from [GithubRepositoriesOrNull].
class GithubRepositoriesOrNullProvider
    extends AutoDisposeAsyncNotifierProviderImpl<GithubRepositoriesOrNull,
        GithubRepository?> {
  /// リポジトリの情報を管理するProvider
  ///
  /// Copied from [GithubRepositoriesOrNull].
  GithubRepositoriesOrNullProvider(
    String userName,
    String repositoryName,
  ) : this._internal(
          () => GithubRepositoriesOrNull()
            ..userName = userName
            ..repositoryName = repositoryName,
          from: githubRepositoriesOrNullProvider,
          name: r'githubRepositoriesOrNullProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$githubRepositoriesOrNullHash,
          dependencies: GithubRepositoriesOrNullFamily._dependencies,
          allTransitiveDependencies:
              GithubRepositoriesOrNullFamily._allTransitiveDependencies,
          userName: userName,
          repositoryName: repositoryName,
        );

  GithubRepositoriesOrNullProvider._internal(
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
  FutureOr<GithubRepository?> runNotifierBuild(
    covariant GithubRepositoriesOrNull notifier,
  ) {
    return notifier.build(
      userName,
      repositoryName,
    );
  }

  @override
  Override overrideWith(GithubRepositoriesOrNull Function() create) {
    return ProviderOverride(
      origin: this,
      override: GithubRepositoriesOrNullProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<GithubRepositoriesOrNull,
      GithubRepository?> createElement() {
    return _GithubRepositoriesOrNullProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GithubRepositoriesOrNullProvider &&
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

mixin GithubRepositoriesOrNullRef
    on AutoDisposeAsyncNotifierProviderRef<GithubRepository?> {
  /// The parameter `userName` of this provider.
  String get userName;

  /// The parameter `repositoryName` of this provider.
  String get repositoryName;
}

class _GithubRepositoriesOrNullProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GithubRepositoriesOrNull,
        GithubRepository?> with GithubRepositoriesOrNullRef {
  _GithubRepositoriesOrNullProviderElement(super.provider);

  @override
  String get userName => (origin as GithubRepositoriesOrNullProvider).userName;
  @override
  String get repositoryName =>
      (origin as GithubRepositoriesOrNullProvider).repositoryName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
