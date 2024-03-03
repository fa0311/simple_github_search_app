import 'package:freezed_annotation/freezed_annotation.dart';

part 'exception.freezed.dart';
part 'exception.g.dart';

@freezed
class GitHubException with _$GitHubException {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GitHubException({
    required String message,
    required String? errors,
    required String documentationUrl,
  }) = _GitHubException;

  factory GitHubException.fromJson(Map<String, dynamic> json) => _$GitHubExceptionFromJson(json);
}
