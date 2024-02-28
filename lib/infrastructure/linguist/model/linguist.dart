import 'package:freezed_annotation/freezed_annotation.dart';

part 'linguist.freezed.dart';
part 'linguist.g.dart';

@freezed
class LinguistLanguages with _$LinguistLanguages {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LinguistLanguages({
    required String name,
    required LinguistLanguagesData value,
  }) = _LinguistLanguages;

  factory LinguistLanguages.fromJson(Map<String, dynamic> json) => _$LinguistLanguagesFromJson(json);
}

@freezed
class LinguistLanguagesData with _$LinguistLanguagesData {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LinguistLanguagesData({
    required String type,
    required String? color,
    required String? group,
    @Default([]) List<String> aliases,
    @Default([]) List<String> filenames,
    @Default([]) List<String> extensions,
    @Default([]) List<String> interpreters,
    required String tmScope,
    required String aceMode,
    required String? codemirrorMode,
    required String? codemirrorMimeType,
    required int languageId,
  }) = _LinguistLanguagesData;

  factory LinguistLanguagesData.fromJson(Map<String, dynamic> json) => _$LinguistLanguagesDataFromJson(json);
}
