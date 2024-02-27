// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GithubResponse<T> _$GithubResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _GithubResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$GithubResponse<T> {
  int get totalCount => throw _privateConstructorUsedError;
  bool get incompleteResults => throw _privateConstructorUsedError;
  List<T> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubResponseCopyWith<T, GithubResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubResponseCopyWith<T, $Res> {
  factory $GithubResponseCopyWith(
          GithubResponse<T> value, $Res Function(GithubResponse<T>) then) =
      _$GithubResponseCopyWithImpl<T, $Res, GithubResponse<T>>;
  @useResult
  $Res call({int totalCount, bool incompleteResults, List<T> items});
}

/// @nodoc
class _$GithubResponseCopyWithImpl<T, $Res, $Val extends GithubResponse<T>>
    implements $GithubResponseCopyWith<T, $Res> {
  _$GithubResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: null == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GithubResponseImplCopyWith<T, $Res>
    implements $GithubResponseCopyWith<T, $Res> {
  factory _$$GithubResponseImplCopyWith(_$GithubResponseImpl<T> value,
          $Res Function(_$GithubResponseImpl<T>) then) =
      __$$GithubResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int totalCount, bool incompleteResults, List<T> items});
}

/// @nodoc
class __$$GithubResponseImplCopyWithImpl<T, $Res>
    extends _$GithubResponseCopyWithImpl<T, $Res, _$GithubResponseImpl<T>>
    implements _$$GithubResponseImplCopyWith<T, $Res> {
  __$$GithubResponseImplCopyWithImpl(_$GithubResponseImpl<T> _value,
      $Res Function(_$GithubResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = null,
    Object? items = null,
  }) {
    return _then(_$GithubResponseImpl<T>(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: null == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, genericArgumentFactories: true)
class _$GithubResponseImpl<T> implements _GithubResponse<T> {
  const _$GithubResponseImpl(
      {required this.totalCount,
      required this.incompleteResults,
      required final List<T> items})
      : _items = items;

  factory _$GithubResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$GithubResponseImplFromJson(json, fromJsonT);

  @override
  final int totalCount;
  @override
  final bool incompleteResults;
  final List<T> _items;
  @override
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'GithubResponse<$T>(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GithubResponseImpl<T> &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.incompleteResults, incompleteResults) ||
                other.incompleteResults == incompleteResults) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalCount, incompleteResults,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GithubResponseImplCopyWith<T, _$GithubResponseImpl<T>> get copyWith =>
      __$$GithubResponseImplCopyWithImpl<T, _$GithubResponseImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$GithubResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _GithubResponse<T> implements GithubResponse<T> {
  const factory _GithubResponse(
      {required final int totalCount,
      required final bool incompleteResults,
      required final List<T> items}) = _$GithubResponseImpl<T>;

  factory _GithubResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$GithubResponseImpl<T>.fromJson;

  @override
  int get totalCount;
  @override
  bool get incompleteResults;
  @override
  List<T> get items;
  @override
  @JsonKey(ignore: true)
  _$$GithubResponseImplCopyWith<T, _$GithubResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
