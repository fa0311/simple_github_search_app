// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getGithubUserHash() => r'7adb15ecfaa82a4ad2a66b05a1952877af60ec27';

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
String _$githubUserOrNullHash() => r'169c35861680963519490e0909deb1be3647484c';

abstract class _$GithubUserOrNull
    extends BuildlessAutoDisposeAsyncNotifier<GithubUser?> {
  late final String userName;

  FutureOr<GithubUser?> build(
    String userName,
  );
}

/// リポジトリの情報を管理するProvider
///
/// Copied from [GithubUserOrNull].
@ProviderFor(GithubUserOrNull)
const githubUserOrNullProvider = GithubUserOrNullFamily();

/// リポジトリの情報を管理するProvider
///
/// Copied from [GithubUserOrNull].
class GithubUserOrNullFamily extends Family<AsyncValue<GithubUser?>> {
  /// リポジトリの情報を管理するProvider
  ///
  /// Copied from [GithubUserOrNull].
  const GithubUserOrNullFamily();

  /// リポジトリの情報を管理するProvider
  ///
  /// Copied from [GithubUserOrNull].
  GithubUserOrNullProvider call(
    String userName,
  ) {
    return GithubUserOrNullProvider(
      userName,
    );
  }

  @override
  GithubUserOrNullProvider getProviderOverride(
    covariant GithubUserOrNullProvider provider,
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
  String? get name => r'githubUserOrNullProvider';
}

/// リポジトリの情報を管理するProvider
///
/// Copied from [GithubUserOrNull].
class GithubUserOrNullProvider extends AutoDisposeAsyncNotifierProviderImpl<
    GithubUserOrNull, GithubUser?> {
  /// リポジトリの情報を管理するProvider
  ///
  /// Copied from [GithubUserOrNull].
  GithubUserOrNullProvider(
    String userName,
  ) : this._internal(
          () => GithubUserOrNull()..userName = userName,
          from: githubUserOrNullProvider,
          name: r'githubUserOrNullProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$githubUserOrNullHash,
          dependencies: GithubUserOrNullFamily._dependencies,
          allTransitiveDependencies:
              GithubUserOrNullFamily._allTransitiveDependencies,
          userName: userName,
        );

  GithubUserOrNullProvider._internal(
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
  FutureOr<GithubUser?> runNotifierBuild(
    covariant GithubUserOrNull notifier,
  ) {
    return notifier.build(
      userName,
    );
  }

  @override
  Override overrideWith(GithubUserOrNull Function() create) {
    return ProviderOverride(
      origin: this,
      override: GithubUserOrNullProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<GithubUserOrNull, GithubUser?>
      createElement() {
    return _GithubUserOrNullProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GithubUserOrNullProvider && other.userName == userName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GithubUserOrNullRef on AutoDisposeAsyncNotifierProviderRef<GithubUser?> {
  /// The parameter `userName` of this provider.
  String get userName;
}

class _GithubUserOrNullProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GithubUserOrNull,
        GithubUser?> with GithubUserOrNullRef {
  _GithubUserOrNullProviderElement(super.provider);

  @override
  String get userName => (origin as GithubUserOrNullProvider).userName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
