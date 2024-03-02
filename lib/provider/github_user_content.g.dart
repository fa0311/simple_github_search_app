// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_user_content.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getGithubReadmeHash() => r'd5f65c4ddea1e12c15dfa85eabaa1d6abe6f6f80';

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

/// Github の README を取得する
///
/// Copied from [getGithubReadme].
@ProviderFor(getGithubReadme)
const getGithubReadmeProvider = GetGithubReadmeFamily();

/// Github の README を取得する
///
/// Copied from [getGithubReadme].
class GetGithubReadmeFamily extends Family<AsyncValue<String?>> {
  /// Github の README を取得する
  ///
  /// Copied from [getGithubReadme].
  const GetGithubReadmeFamily();

  /// Github の README を取得する
  ///
  /// Copied from [getGithubReadme].
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

/// Github の README を取得する
///
/// Copied from [getGithubReadme].
class GetGithubReadmeProvider extends AutoDisposeFutureProvider<String?> {
  /// Github の README を取得する
  ///
  /// Copied from [getGithubReadme].
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

String _$getGithubImageHash() => r'3b2edf31f9070acda000c7332eb266a744d67659';

/// Github の画像を取得する
///
/// Copied from [getGithubImage].
@ProviderFor(getGithubImage)
const getGithubImageProvider = GetGithubImageFamily();

/// Github の画像を取得する
///
/// Copied from [getGithubImage].
class GetGithubImageFamily extends Family<AsyncValue<Response<Uint8List>>> {
  /// Github の画像を取得する
  ///
  /// Copied from [getGithubImage].
  const GetGithubImageFamily();

  /// Github の画像を取得する
  ///
  /// Copied from [getGithubImage].
  GetGithubImageProvider call(
    Uri url,
    String owner,
    String repositoryName,
    String branch,
  ) {
    return GetGithubImageProvider(
      url,
      owner,
      repositoryName,
      branch,
    );
  }

  @override
  GetGithubImageProvider getProviderOverride(
    covariant GetGithubImageProvider provider,
  ) {
    return call(
      provider.url,
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
  String? get name => r'getGithubImageProvider';
}

/// Github の画像を取得する
///
/// Copied from [getGithubImage].
class GetGithubImageProvider
    extends AutoDisposeFutureProvider<Response<Uint8List>> {
  /// Github の画像を取得する
  ///
  /// Copied from [getGithubImage].
  GetGithubImageProvider(
    Uri url,
    String owner,
    String repositoryName,
    String branch,
  ) : this._internal(
          (ref) => getGithubImage(
            ref as GetGithubImageRef,
            url,
            owner,
            repositoryName,
            branch,
          ),
          from: getGithubImageProvider,
          name: r'getGithubImageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getGithubImageHash,
          dependencies: GetGithubImageFamily._dependencies,
          allTransitiveDependencies:
              GetGithubImageFamily._allTransitiveDependencies,
          url: url,
          owner: owner,
          repositoryName: repositoryName,
          branch: branch,
        );

  GetGithubImageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.url,
    required this.owner,
    required this.repositoryName,
    required this.branch,
  }) : super.internal();

  final Uri url;
  final String owner;
  final String repositoryName;
  final String branch;

  @override
  Override overrideWith(
    FutureOr<Response<Uint8List>> Function(GetGithubImageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetGithubImageProvider._internal(
        (ref) => create(ref as GetGithubImageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        url: url,
        owner: owner,
        repositoryName: repositoryName,
        branch: branch,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response<Uint8List>> createElement() {
    return _GetGithubImageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetGithubImageProvider &&
        other.url == url &&
        other.owner == owner &&
        other.repositoryName == repositoryName &&
        other.branch == branch;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, url.hashCode);
    hash = _SystemHash.combine(hash, owner.hashCode);
    hash = _SystemHash.combine(hash, repositoryName.hashCode);
    hash = _SystemHash.combine(hash, branch.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetGithubImageRef on AutoDisposeFutureProviderRef<Response<Uint8List>> {
  /// The parameter `url` of this provider.
  Uri get url;

  /// The parameter `owner` of this provider.
  String get owner;

  /// The parameter `repositoryName` of this provider.
  String get repositoryName;

  /// The parameter `branch` of this provider.
  String get branch;
}

class _GetGithubImageProviderElement
    extends AutoDisposeFutureProviderElement<Response<Uint8List>>
    with GetGithubImageRef {
  _GetGithubImageProviderElement(super.provider);

  @override
  Uri get url => (origin as GetGithubImageProvider).url;
  @override
  String get owner => (origin as GetGithubImageProvider).owner;
  @override
  String get repositoryName =>
      (origin as GetGithubImageProvider).repositoryName;
  @override
  String get branch => (origin as GetGithubImageProvider).branch;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
