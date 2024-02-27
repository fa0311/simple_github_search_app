// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GithubSearchRepositoriesParam _$GithubSearchRepositoriesParamFromJson(
    Map<String, dynamic> json) {
  return _GithubSearchRepositoriesParam.fromJson(json);
}

/// @nodoc
mixin _$GithubSearchRepositoriesParam {
  String get q => throw _privateConstructorUsedError;
  SearchRepositoriesSortParam? get sort => throw _privateConstructorUsedError;
  SearchRepositoriesOrderParam? get order => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubSearchRepositoriesParamCopyWith<GithubSearchRepositoriesParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubSearchRepositoriesParamCopyWith<$Res> {
  factory $GithubSearchRepositoriesParamCopyWith(
          GithubSearchRepositoriesParam value,
          $Res Function(GithubSearchRepositoriesParam) then) =
      _$GithubSearchRepositoriesParamCopyWithImpl<$Res,
          GithubSearchRepositoriesParam>;
  @useResult
  $Res call(
      {String q,
      SearchRepositoriesSortParam? sort,
      SearchRepositoriesOrderParam? order,
      int? perPage,
      int? page});
}

/// @nodoc
class _$GithubSearchRepositoriesParamCopyWithImpl<$Res,
        $Val extends GithubSearchRepositoriesParam>
    implements $GithubSearchRepositoriesParamCopyWith<$Res> {
  _$GithubSearchRepositoriesParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? sort = freezed,
    Object? order = freezed,
    Object? perPage = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      q: null == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SearchRepositoriesSortParam?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SearchRepositoriesOrderParam?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GithubSearchRepositoriesParamImplCopyWith<$Res>
    implements $GithubSearchRepositoriesParamCopyWith<$Res> {
  factory _$$GithubSearchRepositoriesParamImplCopyWith(
          _$GithubSearchRepositoriesParamImpl value,
          $Res Function(_$GithubSearchRepositoriesParamImpl) then) =
      __$$GithubSearchRepositoriesParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String q,
      SearchRepositoriesSortParam? sort,
      SearchRepositoriesOrderParam? order,
      int? perPage,
      int? page});
}

/// @nodoc
class __$$GithubSearchRepositoriesParamImplCopyWithImpl<$Res>
    extends _$GithubSearchRepositoriesParamCopyWithImpl<$Res,
        _$GithubSearchRepositoriesParamImpl>
    implements _$$GithubSearchRepositoriesParamImplCopyWith<$Res> {
  __$$GithubSearchRepositoriesParamImplCopyWithImpl(
      _$GithubSearchRepositoriesParamImpl _value,
      $Res Function(_$GithubSearchRepositoriesParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? sort = freezed,
    Object? order = freezed,
    Object? perPage = freezed,
    Object? page = freezed,
  }) {
    return _then(_$GithubSearchRepositoriesParamImpl(
      q: null == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SearchRepositoriesSortParam?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SearchRepositoriesOrderParam?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$GithubSearchRepositoriesParamImpl
    implements _GithubSearchRepositoriesParam {
  const _$GithubSearchRepositoriesParamImpl(
      {required this.q, this.sort, this.order, this.perPage, this.page});

  factory _$GithubSearchRepositoriesParamImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GithubSearchRepositoriesParamImplFromJson(json);

  @override
  final String q;
  @override
  final SearchRepositoriesSortParam? sort;
  @override
  final SearchRepositoriesOrderParam? order;
  @override
  final int? perPage;
  @override
  final int? page;

  @override
  String toString() {
    return 'GithubSearchRepositoriesParam(q: $q, sort: $sort, order: $order, perPage: $perPage, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GithubSearchRepositoriesParamImpl &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, q, sort, order, perPage, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GithubSearchRepositoriesParamImplCopyWith<
          _$GithubSearchRepositoriesParamImpl>
      get copyWith => __$$GithubSearchRepositoriesParamImplCopyWithImpl<
          _$GithubSearchRepositoriesParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GithubSearchRepositoriesParamImplToJson(
      this,
    );
  }
}

abstract class _GithubSearchRepositoriesParam
    implements GithubSearchRepositoriesParam {
  const factory _GithubSearchRepositoriesParam(
      {required final String q,
      final SearchRepositoriesSortParam? sort,
      final SearchRepositoriesOrderParam? order,
      final int? perPage,
      final int? page}) = _$GithubSearchRepositoriesParamImpl;

  factory _GithubSearchRepositoriesParam.fromJson(Map<String, dynamic> json) =
      _$GithubSearchRepositoriesParamImpl.fromJson;

  @override
  String get q;
  @override
  SearchRepositoriesSortParam? get sort;
  @override
  SearchRepositoriesOrderParam? get order;
  @override
  int? get perPage;
  @override
  int? get page;
  @override
  @JsonKey(ignore: true)
  _$$GithubSearchRepositoriesParamImplCopyWith<
          _$GithubSearchRepositoriesParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}
