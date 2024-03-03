// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GitHubExceptionImpl _$$GitHubExceptionImplFromJson(
        Map<String, dynamic> json) =>
    _$GitHubExceptionImpl(
      message: json['message'] as String,
      errors: json['errors'] as String?,
      documentationUrl: json['documentation_url'] as String,
    );

Map<String, dynamic> _$$GitHubExceptionImplToJson(
        _$GitHubExceptionImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'errors': instance.errors,
      'documentation_url': instance.documentationUrl,
    };
