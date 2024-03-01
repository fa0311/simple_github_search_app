// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'linguist.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getLinguistClientHash() => r'f7f676ceb3cb292c6d7d1b3d90788f37dca432d1';

/// See also [getLinguistClient].
@ProviderFor(getLinguistClient)
final getLinguistClientProvider =
    AutoDisposeFutureProvider<List<LinguistLanguages>>.internal(
  getLinguistClient,
  name: r'getLinguistClientProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getLinguistClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetLinguistClientRef
    = AutoDisposeFutureProviderRef<List<LinguistLanguages>>;
String _$getLinguistLanguagesHash() =>
    r'c4108216d4fffcee965e48d4e9f6313616436c31';

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

/// See also [getLinguistLanguages].
@ProviderFor(getLinguistLanguages)
const getLinguistLanguagesProvider = GetLinguistLanguagesFamily();

/// See also [getLinguistLanguages].
class GetLinguistLanguagesFamily
    extends Family<AsyncValue<LinguistLanguagesData?>> {
  /// See also [getLinguistLanguages].
  const GetLinguistLanguagesFamily();

  /// See also [getLinguistLanguages].
  GetLinguistLanguagesProvider call(
    String language,
  ) {
    return GetLinguistLanguagesProvider(
      language,
    );
  }

  @override
  GetLinguistLanguagesProvider getProviderOverride(
    covariant GetLinguistLanguagesProvider provider,
  ) {
    return call(
      provider.language,
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
  String? get name => r'getLinguistLanguagesProvider';
}

/// See also [getLinguistLanguages].
class GetLinguistLanguagesProvider
    extends AutoDisposeFutureProvider<LinguistLanguagesData?> {
  /// See also [getLinguistLanguages].
  GetLinguistLanguagesProvider(
    String language,
  ) : this._internal(
          (ref) => getLinguistLanguages(
            ref as GetLinguistLanguagesRef,
            language,
          ),
          from: getLinguistLanguagesProvider,
          name: r'getLinguistLanguagesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getLinguistLanguagesHash,
          dependencies: GetLinguistLanguagesFamily._dependencies,
          allTransitiveDependencies:
              GetLinguistLanguagesFamily._allTransitiveDependencies,
          language: language,
        );

  GetLinguistLanguagesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.language,
  }) : super.internal();

  final String language;

  @override
  Override overrideWith(
    FutureOr<LinguistLanguagesData?> Function(GetLinguistLanguagesRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetLinguistLanguagesProvider._internal(
        (ref) => create(ref as GetLinguistLanguagesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        language: language,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<LinguistLanguagesData?> createElement() {
    return _GetLinguistLanguagesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetLinguistLanguagesProvider && other.language == language;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, language.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetLinguistLanguagesRef
    on AutoDisposeFutureProviderRef<LinguistLanguagesData?> {
  /// The parameter `language` of this provider.
  String get language;
}

class _GetLinguistLanguagesProviderElement
    extends AutoDisposeFutureProviderElement<LinguistLanguagesData?>
    with GetLinguistLanguagesRef {
  _GetLinguistLanguagesProviderElement(super.provider);

  @override
  String get language => (origin as GetLinguistLanguagesProvider).language;
}

String _$getLinguistColorHash() => r'26d5472d969f77834fed0b16e16bf61fa8250190';

/// See also [getLinguistColor].
@ProviderFor(getLinguistColor)
const getLinguistColorProvider = GetLinguistColorFamily();

/// See also [getLinguistColor].
class GetLinguistColorFamily extends Family<AsyncValue<int?>> {
  /// See also [getLinguistColor].
  const GetLinguistColorFamily();

  /// See also [getLinguistColor].
  GetLinguistColorProvider call(
    String language,
  ) {
    return GetLinguistColorProvider(
      language,
    );
  }

  @override
  GetLinguistColorProvider getProviderOverride(
    covariant GetLinguistColorProvider provider,
  ) {
    return call(
      provider.language,
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
  String? get name => r'getLinguistColorProvider';
}

/// See also [getLinguistColor].
class GetLinguistColorProvider extends AutoDisposeFutureProvider<int?> {
  /// See also [getLinguistColor].
  GetLinguistColorProvider(
    String language,
  ) : this._internal(
          (ref) => getLinguistColor(
            ref as GetLinguistColorRef,
            language,
          ),
          from: getLinguistColorProvider,
          name: r'getLinguistColorProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getLinguistColorHash,
          dependencies: GetLinguistColorFamily._dependencies,
          allTransitiveDependencies:
              GetLinguistColorFamily._allTransitiveDependencies,
          language: language,
        );

  GetLinguistColorProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.language,
  }) : super.internal();

  final String language;

  @override
  Override overrideWith(
    FutureOr<int?> Function(GetLinguistColorRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetLinguistColorProvider._internal(
        (ref) => create(ref as GetLinguistColorRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        language: language,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<int?> createElement() {
    return _GetLinguistColorProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetLinguistColorProvider && other.language == language;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, language.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetLinguistColorRef on AutoDisposeFutureProviderRef<int?> {
  /// The parameter `language` of this provider.
  String get language;
}

class _GetLinguistColorProviderElement
    extends AutoDisposeFutureProviderElement<int?> with GetLinguistColorRef {
  _GetLinguistColorProviderElement(super.provider);

  @override
  String get language => (origin as GetLinguistColorProvider).language;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
