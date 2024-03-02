// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$httpRequestHash() => r'd42040fa383063790020064bd0d88badc2649154';

/// See also [httpRequest].
@ProviderFor(httpRequest)
final httpRequestProvider = AutoDisposeProvider<Dio>.internal(
  httpRequest,
  name: r'httpRequestProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$httpRequestHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HttpRequestRef = AutoDisposeProviderRef<Dio>;
String _$getImageHash() => r'f7098f24a3304acaca5f7db808bc3cec637a5196';

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

/// See also [getImage].
@ProviderFor(getImage)
const getImageProvider = GetImageFamily();

/// See also [getImage].
class GetImageFamily extends Family<AsyncValue<Response<Uint8List>>> {
  /// See also [getImage].
  const GetImageFamily();

  /// See also [getImage].
  GetImageProvider call(
    Uri url,
  ) {
    return GetImageProvider(
      url,
    );
  }

  @override
  GetImageProvider getProviderOverride(
    covariant GetImageProvider provider,
  ) {
    return call(
      provider.url,
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
  String? get name => r'getImageProvider';
}

/// See also [getImage].
class GetImageProvider extends AutoDisposeFutureProvider<Response<Uint8List>> {
  /// See also [getImage].
  GetImageProvider(
    Uri url,
  ) : this._internal(
          (ref) => getImage(
            ref as GetImageRef,
            url,
          ),
          from: getImageProvider,
          name: r'getImageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getImageHash,
          dependencies: GetImageFamily._dependencies,
          allTransitiveDependencies: GetImageFamily._allTransitiveDependencies,
          url: url,
        );

  GetImageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.url,
  }) : super.internal();

  final Uri url;

  @override
  Override overrideWith(
    FutureOr<Response<Uint8List>> Function(GetImageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetImageProvider._internal(
        (ref) => create(ref as GetImageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        url: url,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response<Uint8List>> createElement() {
    return _GetImageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetImageProvider && other.url == url;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, url.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetImageRef on AutoDisposeFutureProviderRef<Response<Uint8List>> {
  /// The parameter `url` of this provider.
  Uri get url;
}

class _GetImageProviderElement
    extends AutoDisposeFutureProviderElement<Response<Uint8List>>
    with GetImageRef {
  _GetImageProviderElement(super.provider);

  @override
  Uri get url => (origin as GetImageProvider).url;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
