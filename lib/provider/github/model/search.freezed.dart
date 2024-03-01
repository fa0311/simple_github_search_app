// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GithubItems<T> {
  int get totalCount => throw _privateConstructorUsedError;
  bool get incompleteResults => throw _privateConstructorUsedError;
  List<T> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubItemsCopyWith<T, GithubItems<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubItemsCopyWith<T, $Res> {
  factory $GithubItemsCopyWith(
          GithubItems<T> value, $Res Function(GithubItems<T>) then) =
      _$GithubItemsCopyWithImpl<T, $Res, GithubItems<T>>;
  @useResult
  $Res call({int totalCount, bool incompleteResults, List<T> items});
}

/// @nodoc
class _$GithubItemsCopyWithImpl<T, $Res, $Val extends GithubItems<T>>
    implements $GithubItemsCopyWith<T, $Res> {
  _$GithubItemsCopyWithImpl(this._value, this._then);

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
abstract class _$$GithubItemsImplCopyWith<T, $Res>
    implements $GithubItemsCopyWith<T, $Res> {
  factory _$$GithubItemsImplCopyWith(_$GithubItemsImpl<T> value,
          $Res Function(_$GithubItemsImpl<T>) then) =
      __$$GithubItemsImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int totalCount, bool incompleteResults, List<T> items});
}

/// @nodoc
class __$$GithubItemsImplCopyWithImpl<T, $Res>
    extends _$GithubItemsCopyWithImpl<T, $Res, _$GithubItemsImpl<T>>
    implements _$$GithubItemsImplCopyWith<T, $Res> {
  __$$GithubItemsImplCopyWithImpl(
      _$GithubItemsImpl<T> _value, $Res Function(_$GithubItemsImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = null,
    Object? items = null,
  }) {
    return _then(_$GithubItemsImpl<T>(
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

class _$GithubItemsImpl<T> implements _GithubItems<T> {
  const _$GithubItemsImpl(
      {required this.totalCount,
      required this.incompleteResults,
      required final List<T> items})
      : _items = items;

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
    return 'GithubItems<$T>(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GithubItemsImpl<T> &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.incompleteResults, incompleteResults) ||
                other.incompleteResults == incompleteResults) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalCount, incompleteResults,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GithubItemsImplCopyWith<T, _$GithubItemsImpl<T>> get copyWith =>
      __$$GithubItemsImplCopyWithImpl<T, _$GithubItemsImpl<T>>(
          this, _$identity);
}

abstract class _GithubItems<T> implements GithubItems<T> {
  const factory _GithubItems(
      {required final int totalCount,
      required final bool incompleteResults,
      required final List<T> items}) = _$GithubItemsImpl<T>;

  @override
  int get totalCount;
  @override
  bool get incompleteResults;
  @override
  List<T> get items;
  @override
  @JsonKey(ignore: true)
  _$$GithubItemsImplCopyWith<T, _$GithubItemsImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
