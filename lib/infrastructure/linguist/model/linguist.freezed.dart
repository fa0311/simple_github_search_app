// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'linguist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LinguistLanguages _$LinguistLanguagesFromJson(Map<String, dynamic> json) {
  return _LinguistLanguages.fromJson(json);
}

/// @nodoc
mixin _$LinguistLanguages {
  String get name => throw _privateConstructorUsedError;
  LinguistLanguagesData get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinguistLanguagesCopyWith<LinguistLanguages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinguistLanguagesCopyWith<$Res> {
  factory $LinguistLanguagesCopyWith(
          LinguistLanguages value, $Res Function(LinguistLanguages) then) =
      _$LinguistLanguagesCopyWithImpl<$Res, LinguistLanguages>;
  @useResult
  $Res call({String name, LinguistLanguagesData value});

  $LinguistLanguagesDataCopyWith<$Res> get value;
}

/// @nodoc
class _$LinguistLanguagesCopyWithImpl<$Res, $Val extends LinguistLanguages>
    implements $LinguistLanguagesCopyWith<$Res> {
  _$LinguistLanguagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as LinguistLanguagesData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LinguistLanguagesDataCopyWith<$Res> get value {
    return $LinguistLanguagesDataCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LinguistLanguagesImplCopyWith<$Res>
    implements $LinguistLanguagesCopyWith<$Res> {
  factory _$$LinguistLanguagesImplCopyWith(_$LinguistLanguagesImpl value,
          $Res Function(_$LinguistLanguagesImpl) then) =
      __$$LinguistLanguagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, LinguistLanguagesData value});

  @override
  $LinguistLanguagesDataCopyWith<$Res> get value;
}

/// @nodoc
class __$$LinguistLanguagesImplCopyWithImpl<$Res>
    extends _$LinguistLanguagesCopyWithImpl<$Res, _$LinguistLanguagesImpl>
    implements _$$LinguistLanguagesImplCopyWith<$Res> {
  __$$LinguistLanguagesImplCopyWithImpl(_$LinguistLanguagesImpl _value,
      $Res Function(_$LinguistLanguagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$LinguistLanguagesImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as LinguistLanguagesData,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$LinguistLanguagesImpl implements _LinguistLanguages {
  const _$LinguistLanguagesImpl({required this.name, required this.value});

  factory _$LinguistLanguagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinguistLanguagesImplFromJson(json);

  @override
  final String name;
  @override
  final LinguistLanguagesData value;

  @override
  String toString() {
    return 'LinguistLanguages(name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinguistLanguagesImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinguistLanguagesImplCopyWith<_$LinguistLanguagesImpl> get copyWith =>
      __$$LinguistLanguagesImplCopyWithImpl<_$LinguistLanguagesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinguistLanguagesImplToJson(
      this,
    );
  }
}

abstract class _LinguistLanguages implements LinguistLanguages {
  const factory _LinguistLanguages(
      {required final String name,
      required final LinguistLanguagesData value}) = _$LinguistLanguagesImpl;

  factory _LinguistLanguages.fromJson(Map<String, dynamic> json) =
      _$LinguistLanguagesImpl.fromJson;

  @override
  String get name;
  @override
  LinguistLanguagesData get value;
  @override
  @JsonKey(ignore: true)
  _$$LinguistLanguagesImplCopyWith<_$LinguistLanguagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LinguistLanguagesData _$LinguistLanguagesDataFromJson(
    Map<String, dynamic> json) {
  return _LinguistLanguagesData.fromJson(json);
}

/// @nodoc
mixin _$LinguistLanguagesData {
  String get type => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get group => throw _privateConstructorUsedError;
  List<String> get aliases => throw _privateConstructorUsedError;
  List<String> get filenames => throw _privateConstructorUsedError;
  List<String> get extensions => throw _privateConstructorUsedError;
  List<String> get interpreters => throw _privateConstructorUsedError;
  String get tmScope => throw _privateConstructorUsedError;
  String get aceMode => throw _privateConstructorUsedError;
  String? get codemirrorMode => throw _privateConstructorUsedError;
  String? get codemirrorMimeType => throw _privateConstructorUsedError;
  int get languageId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinguistLanguagesDataCopyWith<LinguistLanguagesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinguistLanguagesDataCopyWith<$Res> {
  factory $LinguistLanguagesDataCopyWith(LinguistLanguagesData value,
          $Res Function(LinguistLanguagesData) then) =
      _$LinguistLanguagesDataCopyWithImpl<$Res, LinguistLanguagesData>;
  @useResult
  $Res call(
      {String type,
      String? color,
      String? group,
      List<String> aliases,
      List<String> filenames,
      List<String> extensions,
      List<String> interpreters,
      String tmScope,
      String aceMode,
      String? codemirrorMode,
      String? codemirrorMimeType,
      int languageId});
}

/// @nodoc
class _$LinguistLanguagesDataCopyWithImpl<$Res,
        $Val extends LinguistLanguagesData>
    implements $LinguistLanguagesDataCopyWith<$Res> {
  _$LinguistLanguagesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? color = freezed,
    Object? group = freezed,
    Object? aliases = null,
    Object? filenames = null,
    Object? extensions = null,
    Object? interpreters = null,
    Object? tmScope = null,
    Object? aceMode = null,
    Object? codemirrorMode = freezed,
    Object? codemirrorMimeType = freezed,
    Object? languageId = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      aliases: null == aliases
          ? _value.aliases
          : aliases // ignore: cast_nullable_to_non_nullable
              as List<String>,
      filenames: null == filenames
          ? _value.filenames
          : filenames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      extensions: null == extensions
          ? _value.extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      interpreters: null == interpreters
          ? _value.interpreters
          : interpreters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tmScope: null == tmScope
          ? _value.tmScope
          : tmScope // ignore: cast_nullable_to_non_nullable
              as String,
      aceMode: null == aceMode
          ? _value.aceMode
          : aceMode // ignore: cast_nullable_to_non_nullable
              as String,
      codemirrorMode: freezed == codemirrorMode
          ? _value.codemirrorMode
          : codemirrorMode // ignore: cast_nullable_to_non_nullable
              as String?,
      codemirrorMimeType: freezed == codemirrorMimeType
          ? _value.codemirrorMimeType
          : codemirrorMimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      languageId: null == languageId
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinguistLanguagesDataImplCopyWith<$Res>
    implements $LinguistLanguagesDataCopyWith<$Res> {
  factory _$$LinguistLanguagesDataImplCopyWith(
          _$LinguistLanguagesDataImpl value,
          $Res Function(_$LinguistLanguagesDataImpl) then) =
      __$$LinguistLanguagesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String? color,
      String? group,
      List<String> aliases,
      List<String> filenames,
      List<String> extensions,
      List<String> interpreters,
      String tmScope,
      String aceMode,
      String? codemirrorMode,
      String? codemirrorMimeType,
      int languageId});
}

/// @nodoc
class __$$LinguistLanguagesDataImplCopyWithImpl<$Res>
    extends _$LinguistLanguagesDataCopyWithImpl<$Res,
        _$LinguistLanguagesDataImpl>
    implements _$$LinguistLanguagesDataImplCopyWith<$Res> {
  __$$LinguistLanguagesDataImplCopyWithImpl(_$LinguistLanguagesDataImpl _value,
      $Res Function(_$LinguistLanguagesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? color = freezed,
    Object? group = freezed,
    Object? aliases = null,
    Object? filenames = null,
    Object? extensions = null,
    Object? interpreters = null,
    Object? tmScope = null,
    Object? aceMode = null,
    Object? codemirrorMode = freezed,
    Object? codemirrorMimeType = freezed,
    Object? languageId = null,
  }) {
    return _then(_$LinguistLanguagesDataImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      aliases: null == aliases
          ? _value._aliases
          : aliases // ignore: cast_nullable_to_non_nullable
              as List<String>,
      filenames: null == filenames
          ? _value._filenames
          : filenames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      extensions: null == extensions
          ? _value._extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      interpreters: null == interpreters
          ? _value._interpreters
          : interpreters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tmScope: null == tmScope
          ? _value.tmScope
          : tmScope // ignore: cast_nullable_to_non_nullable
              as String,
      aceMode: null == aceMode
          ? _value.aceMode
          : aceMode // ignore: cast_nullable_to_non_nullable
              as String,
      codemirrorMode: freezed == codemirrorMode
          ? _value.codemirrorMode
          : codemirrorMode // ignore: cast_nullable_to_non_nullable
              as String?,
      codemirrorMimeType: freezed == codemirrorMimeType
          ? _value.codemirrorMimeType
          : codemirrorMimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      languageId: null == languageId
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$LinguistLanguagesDataImpl implements _LinguistLanguagesData {
  const _$LinguistLanguagesDataImpl(
      {required this.type,
      required this.color,
      required this.group,
      final List<String> aliases = const [],
      final List<String> filenames = const [],
      final List<String> extensions = const [],
      final List<String> interpreters = const [],
      required this.tmScope,
      required this.aceMode,
      required this.codemirrorMode,
      required this.codemirrorMimeType,
      required this.languageId})
      : _aliases = aliases,
        _filenames = filenames,
        _extensions = extensions,
        _interpreters = interpreters;

  factory _$LinguistLanguagesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinguistLanguagesDataImplFromJson(json);

  @override
  final String type;
  @override
  final String? color;
  @override
  final String? group;
  final List<String> _aliases;
  @override
  @JsonKey()
  List<String> get aliases {
    if (_aliases is EqualUnmodifiableListView) return _aliases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_aliases);
  }

  final List<String> _filenames;
  @override
  @JsonKey()
  List<String> get filenames {
    if (_filenames is EqualUnmodifiableListView) return _filenames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filenames);
  }

  final List<String> _extensions;
  @override
  @JsonKey()
  List<String> get extensions {
    if (_extensions is EqualUnmodifiableListView) return _extensions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_extensions);
  }

  final List<String> _interpreters;
  @override
  @JsonKey()
  List<String> get interpreters {
    if (_interpreters is EqualUnmodifiableListView) return _interpreters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interpreters);
  }

  @override
  final String tmScope;
  @override
  final String aceMode;
  @override
  final String? codemirrorMode;
  @override
  final String? codemirrorMimeType;
  @override
  final int languageId;

  @override
  String toString() {
    return 'LinguistLanguagesData(type: $type, color: $color, group: $group, aliases: $aliases, filenames: $filenames, extensions: $extensions, interpreters: $interpreters, tmScope: $tmScope, aceMode: $aceMode, codemirrorMode: $codemirrorMode, codemirrorMimeType: $codemirrorMimeType, languageId: $languageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinguistLanguagesDataImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.group, group) || other.group == group) &&
            const DeepCollectionEquality().equals(other._aliases, _aliases) &&
            const DeepCollectionEquality()
                .equals(other._filenames, _filenames) &&
            const DeepCollectionEquality()
                .equals(other._extensions, _extensions) &&
            const DeepCollectionEquality()
                .equals(other._interpreters, _interpreters) &&
            (identical(other.tmScope, tmScope) || other.tmScope == tmScope) &&
            (identical(other.aceMode, aceMode) || other.aceMode == aceMode) &&
            (identical(other.codemirrorMode, codemirrorMode) ||
                other.codemirrorMode == codemirrorMode) &&
            (identical(other.codemirrorMimeType, codemirrorMimeType) ||
                other.codemirrorMimeType == codemirrorMimeType) &&
            (identical(other.languageId, languageId) ||
                other.languageId == languageId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      color,
      group,
      const DeepCollectionEquality().hash(_aliases),
      const DeepCollectionEquality().hash(_filenames),
      const DeepCollectionEquality().hash(_extensions),
      const DeepCollectionEquality().hash(_interpreters),
      tmScope,
      aceMode,
      codemirrorMode,
      codemirrorMimeType,
      languageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinguistLanguagesDataImplCopyWith<_$LinguistLanguagesDataImpl>
      get copyWith => __$$LinguistLanguagesDataImplCopyWithImpl<
          _$LinguistLanguagesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinguistLanguagesDataImplToJson(
      this,
    );
  }
}

abstract class _LinguistLanguagesData implements LinguistLanguagesData {
  const factory _LinguistLanguagesData(
      {required final String type,
      required final String? color,
      required final String? group,
      final List<String> aliases,
      final List<String> filenames,
      final List<String> extensions,
      final List<String> interpreters,
      required final String tmScope,
      required final String aceMode,
      required final String? codemirrorMode,
      required final String? codemirrorMimeType,
      required final int languageId}) = _$LinguistLanguagesDataImpl;

  factory _LinguistLanguagesData.fromJson(Map<String, dynamic> json) =
      _$LinguistLanguagesDataImpl.fromJson;

  @override
  String get type;
  @override
  String? get color;
  @override
  String? get group;
  @override
  List<String> get aliases;
  @override
  List<String> get filenames;
  @override
  List<String> get extensions;
  @override
  List<String> get interpreters;
  @override
  String get tmScope;
  @override
  String get aceMode;
  @override
  String? get codemirrorMode;
  @override
  String? get codemirrorMimeType;
  @override
  int get languageId;
  @override
  @JsonKey(ignore: true)
  _$$LinguistLanguagesDataImplCopyWith<_$LinguistLanguagesDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
