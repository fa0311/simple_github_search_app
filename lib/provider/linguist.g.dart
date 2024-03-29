// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'linguist.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getLinguistClientHash() => r'ef3f3d19c10523da86e59737e2171fbb452a98f1';

/// Linguist のクライアントを取得する
///
/// Copied from [getLinguistClient].
@ProviderFor(getLinguistClient)
final getLinguistClientProvider =
    FutureProvider<List<LinguistLanguages>>.internal(
  getLinguistClient,
  name: r'getLinguistClientProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getLinguistClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetLinguistClientRef = FutureProviderRef<List<LinguistLanguages>>;
String _$getLinguistLanguagesHash() =>
    r'001b4b9a101a61c90618a1867a9b121eb8fa7f9c';

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

/// Linguist を使用して言語の名前から言語のデータを取得する
///
/// Copied from [getLinguistLanguages].
@ProviderFor(getLinguistLanguages)
const getLinguistLanguagesProvider = GetLinguistLanguagesFamily();

/// Linguist を使用して言語の名前から言語のデータを取得する
///
/// Copied from [getLinguistLanguages].
class GetLinguistLanguagesFamily
    extends Family<AsyncValue<LinguistLanguagesData?>> {
  /// Linguist を使用して言語の名前から言語のデータを取得する
  ///
  /// Copied from [getLinguistLanguages].
  const GetLinguistLanguagesFamily();

  /// Linguist を使用して言語の名前から言語のデータを取得する
  ///
  /// Copied from [getLinguistLanguages].
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

/// Linguist を使用して言語の名前から言語のデータを取得する
///
/// Copied from [getLinguistLanguages].
class GetLinguistLanguagesProvider
    extends FutureProvider<LinguistLanguagesData?> {
  /// Linguist を使用して言語の名前から言語のデータを取得する
  ///
  /// Copied from [getLinguistLanguages].
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
  FutureProviderElement<LinguistLanguagesData?> createElement() {
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

mixin GetLinguistLanguagesRef on FutureProviderRef<LinguistLanguagesData?> {
  /// The parameter `language` of this provider.
  String get language;
}

class _GetLinguistLanguagesProviderElement
    extends FutureProviderElement<LinguistLanguagesData?>
    with GetLinguistLanguagesRef {
  _GetLinguistLanguagesProviderElement(super.provider);

  @override
  String get language => (origin as GetLinguistLanguagesProvider).language;
}

String _$getLinguistColorHash() => r'26d5472d969f77834fed0b16e16bf61fa8250190';

/// Linguist を使用して言語の名前から言語の色を取得する
///
/// Copied from [getLinguistColor].
@ProviderFor(getLinguistColor)
const getLinguistColorProvider = GetLinguistColorFamily();

/// Linguist を使用して言語の名前から言語の色を取得する
///
/// Copied from [getLinguistColor].
class GetLinguistColorFamily extends Family<AsyncValue<int?>> {
  /// Linguist を使用して言語の名前から言語の色を取得する
  ///
  /// Copied from [getLinguistColor].
  const GetLinguistColorFamily();

  /// Linguist を使用して言語の名前から言語の色を取得する
  ///
  /// Copied from [getLinguistColor].
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

/// Linguist を使用して言語の名前から言語の色を取得する
///
/// Copied from [getLinguistColor].
class GetLinguistColorProvider extends AutoDisposeFutureProvider<int?> {
  /// Linguist を使用して言語の名前から言語の色を取得する
  ///
  /// Copied from [getLinguistColor].
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
