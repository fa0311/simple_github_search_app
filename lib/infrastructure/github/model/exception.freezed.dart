// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GitHubException _$GitHubExceptionFromJson(Map<String, dynamic> json) {
  return _GitHubException.fromJson(json);
}

/// @nodoc
mixin _$GitHubException {
  String get message => throw _privateConstructorUsedError;
  String get errors => throw _privateConstructorUsedError;
  String get documentationUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitHubExceptionCopyWith<GitHubException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubExceptionCopyWith<$Res> {
  factory $GitHubExceptionCopyWith(
          GitHubException value, $Res Function(GitHubException) then) =
      _$GitHubExceptionCopyWithImpl<$Res, GitHubException>;
  @useResult
  $Res call({String message, String errors, String documentationUrl});
}

/// @nodoc
class _$GitHubExceptionCopyWithImpl<$Res, $Val extends GitHubException>
    implements $GitHubExceptionCopyWith<$Res> {
  _$GitHubExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? errors = null,
    Object? documentationUrl = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as String,
      documentationUrl: null == documentationUrl
          ? _value.documentationUrl
          : documentationUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GitHubExceptionImplCopyWith<$Res>
    implements $GitHubExceptionCopyWith<$Res> {
  factory _$$GitHubExceptionImplCopyWith(_$GitHubExceptionImpl value,
          $Res Function(_$GitHubExceptionImpl) then) =
      __$$GitHubExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String errors, String documentationUrl});
}

/// @nodoc
class __$$GitHubExceptionImplCopyWithImpl<$Res>
    extends _$GitHubExceptionCopyWithImpl<$Res, _$GitHubExceptionImpl>
    implements _$$GitHubExceptionImplCopyWith<$Res> {
  __$$GitHubExceptionImplCopyWithImpl(
      _$GitHubExceptionImpl _value, $Res Function(_$GitHubExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? errors = null,
    Object? documentationUrl = null,
  }) {
    return _then(_$GitHubExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as String,
      documentationUrl: null == documentationUrl
          ? _value.documentationUrl
          : documentationUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$GitHubExceptionImpl implements _GitHubException {
  const _$GitHubExceptionImpl(
      {required this.message,
      required this.errors,
      required this.documentationUrl});

  factory _$GitHubExceptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitHubExceptionImplFromJson(json);

  @override
  final String message;
  @override
  final String errors;
  @override
  final String documentationUrl;

  @override
  String toString() {
    return 'GitHubException(message: $message, errors: $errors, documentationUrl: $documentationUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitHubExceptionImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errors, errors) || other.errors == errors) &&
            (identical(other.documentationUrl, documentationUrl) ||
                other.documentationUrl == documentationUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, message, errors, documentationUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GitHubExceptionImplCopyWith<_$GitHubExceptionImpl> get copyWith =>
      __$$GitHubExceptionImplCopyWithImpl<_$GitHubExceptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitHubExceptionImplToJson(
      this,
    );
  }
}

abstract class _GitHubException implements GitHubException {
  const factory _GitHubException(
      {required final String message,
      required final String errors,
      required final String documentationUrl}) = _$GitHubExceptionImpl;

  factory _GitHubException.fromJson(Map<String, dynamic> json) =
      _$GitHubExceptionImpl.fromJson;

  @override
  String get message;
  @override
  String get errors;
  @override
  String get documentationUrl;
  @override
  @JsonKey(ignore: true)
  _$$GitHubExceptionImplCopyWith<_$GitHubExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
