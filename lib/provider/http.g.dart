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
String _$sendGetRequestHash() => r'52df2c13d8dc32db2e8521db279d346d46f30019';

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

/// See also [sendGetRequest].
@ProviderFor(sendGetRequest)
const sendGetRequestProvider = SendGetRequestFamily();

/// See also [sendGetRequest].
class SendGetRequestFamily extends Family<AsyncValue<Response<String>>> {
  /// See also [sendGetRequest].
  const SendGetRequestFamily();

  /// See also [sendGetRequest].
  SendGetRequestProvider call(
    Uri url,
  ) {
    return SendGetRequestProvider(
      url,
    );
  }

  @override
  SendGetRequestProvider getProviderOverride(
    covariant SendGetRequestProvider provider,
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
  String? get name => r'sendGetRequestProvider';
}

/// See also [sendGetRequest].
class SendGetRequestProvider
    extends AutoDisposeFutureProvider<Response<String>> {
  /// See also [sendGetRequest].
  SendGetRequestProvider(
    Uri url,
  ) : this._internal(
          (ref) => sendGetRequest(
            ref as SendGetRequestRef,
            url,
          ),
          from: sendGetRequestProvider,
          name: r'sendGetRequestProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sendGetRequestHash,
          dependencies: SendGetRequestFamily._dependencies,
          allTransitiveDependencies:
              SendGetRequestFamily._allTransitiveDependencies,
          url: url,
        );

  SendGetRequestProvider._internal(
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
    FutureOr<Response<String>> Function(SendGetRequestRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SendGetRequestProvider._internal(
        (ref) => create(ref as SendGetRequestRef),
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
  AutoDisposeFutureProviderElement<Response<String>> createElement() {
    return _SendGetRequestProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SendGetRequestProvider && other.url == url;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, url.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SendGetRequestRef on AutoDisposeFutureProviderRef<Response<String>> {
  /// The parameter `url` of this provider.
  Uri get url;
}

class _SendGetRequestProviderElement
    extends AutoDisposeFutureProviderElement<Response<String>>
    with SendGetRequestRef {
  _SendGetRequestProviderElement(super.provider);

  @override
  Uri get url => (origin as SendGetRequestProvider).url;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
