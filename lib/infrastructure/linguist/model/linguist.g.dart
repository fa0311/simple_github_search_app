// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'linguist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LinguistLanguagesImpl _$$LinguistLanguagesImplFromJson(
        Map<String, dynamic> json) =>
    _$LinguistLanguagesImpl(
      name: json['name'] as String,
      value:
          LinguistLanguagesData.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LinguistLanguagesImplToJson(
        _$LinguistLanguagesImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

_$LinguistLanguagesDataImpl _$$LinguistLanguagesDataImplFromJson(
        Map<String, dynamic> json) =>
    _$LinguistLanguagesDataImpl(
      type: json['type'] as String,
      color: json['color'] as String?,
      group: json['group'] as String?,
      aliases: (json['aliases'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      filenames: (json['filenames'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      extensions: (json['extensions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      interpreters: (json['interpreters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      tmScope: json['tm_scope'] as String,
      aceMode: json['ace_mode'] as String,
      codemirrorMode: json['codemirror_mode'] as String?,
      codemirrorMimeType: json['codemirror_mime_type'] as String?,
      languageId: json['language_id'] as int,
    );

Map<String, dynamic> _$$LinguistLanguagesDataImplToJson(
        _$LinguistLanguagesDataImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'color': instance.color,
      'group': instance.group,
      'aliases': instance.aliases,
      'filenames': instance.filenames,
      'extensions': instance.extensions,
      'interpreters': instance.interpreters,
      'tm_scope': instance.tmScope,
      'ace_mode': instance.aceMode,
      'codemirror_mode': instance.codemirrorMode,
      'codemirror_mime_type': instance.codemirrorMimeType,
      'language_id': instance.languageId,
    };
