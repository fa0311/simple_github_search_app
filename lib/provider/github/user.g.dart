// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getGithubUserRawHash() => r'30773f0f112c814928efe3f500e1dcc9d5200a53';

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
/// Copied from [getGithubUserRaw].
@ProviderFor(getGithubUserRaw)
const getGithubUserRawProvider = GetGithubUserRawFamily();

/// リクエストのキャッシュを担うProvider
///
/// Copied from [getGithubUserRaw].
class GetGithubUserRawFamily extends Family<AsyncValue<GithubUser>> {
  /// リクエストのキャッシュを担うProvider
  ///
  /// Copied from [getGithubUserRaw].
  const GetGithubUserRawFamily();

  /// リクエストのキャッシュを担うProvider
  ///
  /// Copied from [getGithubUserRaw].
  GetGithubUserRawProvider call(
    String userName,
  ) {
    return GetGithubUserRawProvider(
      userName,
    );
  }

  @override
  GetGithubUserRawProvider getProviderOverride(
    covariant GetGithubUserRawProvider provider,
  ) {
    return call(
      provider.userName,
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
  String? get name => r'getGithubUserRawProvider';
}

/// リクエストのキャッシュを担うProvider
///
/// Copied from [getGithubUserRaw].
class GetGithubUserRawProvider extends AutoDisposeFutureProvider<GithubUser> {
  /// リクエストのキャッシュを担うProvider
  ///
  /// Copied from [getGithubUserRaw].
  GetGithubUserRawProvider(
    String userName,
  ) : this._internal(
          (ref) => getGithubUserRaw(
            ref as GetGithubUserRawRef,
            userName,
          ),
          from: getGithubUserRawProvider,
          name: r'getGithubUserRawProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getGithubUserRawHash,
          dependencies: GetGithubUserRawFamily._dependencies,
          allTransitiveDependencies:
              GetGithubUserRawFamily._allTransitiveDependencies,
          userName: userName,
        );

  GetGithubUserRawProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userName,
  }) : super.internal();

  final String userName;

  @override
  Override overrideWith(
    FutureOr<GithubUser> Function(GetGithubUserRawRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetGithubUserRawProvider._internal(
        (ref) => create(ref as GetGithubUserRawRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userName: userName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<GithubUser> createElement() {
    return _GetGithubUserRawProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetGithubUserRawProvider && other.userName == userName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetGithubUserRawRef on AutoDisposeFutureProviderRef<GithubUser> {
  /// The parameter `userName` of this provider.
  String get userName;
}

class _GetGithubUserRawProviderElement
    extends AutoDisposeFutureProviderElement<GithubUser>
    with GetGithubUserRawRef {
  _GetGithubUserRawProviderElement(super.provider);

  @override
  String get userName => (origin as GetGithubUserRawProvider).userName;
}

String _$getGithubUserHash() => r'4729f15faa739160ab210dfcf1687a4c0808c518';

/// 情報がなかったらリクエストを送るProvider
///
/// Copied from [getGithubUser].
@ProviderFor(getGithubUser)
const getGithubUserProvider = GetGithubUserFamily();

/// 情報がなかったらリクエストを送るProvider
///
/// Copied from [getGithubUser].
class GetGithubUserFamily extends Family<AsyncValue<GithubUser>> {
  /// 情報がなかったらリクエストを送るProvider
  ///
  /// Copied from [getGithubUser].
  const GetGithubUserFamily();

  /// 情報がなかったらリクエストを送るProvider
  ///
  /// Copied from [getGithubUser].
  GetGithubUserProvider call(
    String userName,
  ) {
    return GetGithubUserProvider(
      userName,
    );
  }

  @override
  GetGithubUserProvider getProviderOverride(
    covariant GetGithubUserProvider provider,
  ) {
    return call(
      provider.userName,
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
  String? get name => r'getGithubUserProvider';
}

/// 情報がなかったらリクエストを送るProvider
///
/// Copied from [getGithubUser].
class GetGithubUserProvider extends AutoDisposeFutureProvider<GithubUser> {
  /// 情報がなかったらリクエストを送るProvider
  ///
  /// Copied from [getGithubUser].
  GetGithubUserProvider(
    String userName,
  ) : this._internal(
          (ref) => getGithubUser(
            ref as GetGithubUserRef,
            userName,
          ),
          from: getGithubUserProvider,
          name: r'getGithubUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getGithubUserHash,
          dependencies: GetGithubUserFamily._dependencies,
          allTransitiveDependencies:
              GetGithubUserFamily._allTransitiveDependencies,
          userName: userName,
        );

  GetGithubUserProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userName,
  }) : super.internal();

  final String userName;

  @override
  Override overrideWith(
    FutureOr<GithubUser> Function(GetGithubUserRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetGithubUserProvider._internal(
        (ref) => create(ref as GetGithubUserRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userName: userName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<GithubUser> createElement() {
    return _GetGithubUserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetGithubUserProvider && other.userName == userName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetGithubUserRef on AutoDisposeFutureProviderRef<GithubUser> {
  /// The parameter `userName` of this provider.
  String get userName;
}

class _GetGithubUserProviderElement
    extends AutoDisposeFutureProviderElement<GithubUser> with GetGithubUserRef {
  _GetGithubUserProviderElement(super.provider);

  @override
  String get userName => (origin as GetGithubUserProvider).userName;
}

String _$getGithubGhostHash() => r'738a238727021eddd8d1c9217d81dd9e75f540c6';

/// See also [getGithubGhost].
@ProviderFor(getGithubGhost)
final getGithubGhostProvider = AutoDisposeFutureProvider<GithubUser>.internal(
  getGithubGhost,
  name: r'getGithubGhostProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getGithubGhostHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetGithubGhostRef = AutoDisposeFutureProviderRef<GithubUser>;
String _$githubUserStateHash() => r'8d94760f213c38d2bee9e8913f996f6ff869ab47';

abstract class _$GithubUserState extends BuildlessNotifier<GithubUser?> {
  late final String userName;

  GithubUser? build(
    String userName,
  );
}

/// リポジトリの情報を管理するProvider
///
/// Copied from [GithubUserState].
@ProviderFor(GithubUserState)
const githubUserStateProvider = GithubUserStateFamily();

/// リポジトリの情報を管理するProvider
///
/// Copied from [GithubUserState].
class GithubUserStateFamily extends Family<GithubUser?> {
  /// リポジトリの情報を管理するProvider
  ///
  /// Copied from [GithubUserState].
  const GithubUserStateFamily();

  /// リポジトリの情報を管理するProvider
  ///
  /// Copied from [GithubUserState].
  GithubUserStateProvider call(
    String userName,
  ) {
    return GithubUserStateProvider(
      userName,
    );
  }

  @override
  GithubUserStateProvider getProviderOverride(
    covariant GithubUserStateProvider provider,
  ) {
    return call(
      provider.userName,
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
  String? get name => r'githubUserStateProvider';
}

/// リポジトリの情報を管理するProvider
///
/// Copied from [GithubUserState].
class GithubUserStateProvider
    extends NotifierProviderImpl<GithubUserState, GithubUser?> {
  /// リポジトリの情報を管理するProvider
  ///
  /// Copied from [GithubUserState].
  GithubUserStateProvider(
    String userName,
  ) : this._internal(
          () => GithubUserState()..userName = userName,
          from: githubUserStateProvider,
          name: r'githubUserStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$githubUserStateHash,
          dependencies: GithubUserStateFamily._dependencies,
          allTransitiveDependencies:
              GithubUserStateFamily._allTransitiveDependencies,
          userName: userName,
        );

  GithubUserStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userName,
  }) : super.internal();

  final String userName;

  @override
  GithubUser? runNotifierBuild(
    covariant GithubUserState notifier,
  ) {
    return notifier.build(
      userName,
    );
  }

  @override
  Override overrideWith(GithubUserState Function() create) {
    return ProviderOverride(
      origin: this,
      override: GithubUserStateProvider._internal(
        () => create()..userName = userName,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userName: userName,
      ),
    );
  }

  @override
  NotifierProviderElement<GithubUserState, GithubUser?> createElement() {
    return _GithubUserStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GithubUserStateProvider && other.userName == userName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GithubUserStateRef on NotifierProviderRef<GithubUser?> {
  /// The parameter `userName` of this provider.
  String get userName;
}

class _GithubUserStateProviderElement
    extends NotifierProviderElement<GithubUserState, GithubUser?>
    with GithubUserStateRef {
  _GithubUserStateProviderElement(super.provider);

  @override
  String get userName => (origin as GithubUserStateProvider).userName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
