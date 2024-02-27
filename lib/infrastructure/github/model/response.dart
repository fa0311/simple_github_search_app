import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.freezed.dart';
part 'response.g.dart';

@Freezed(genericArgumentFactories: true)
class GithubResponse<T> with _$GithubResponse<T> {
  @JsonSerializable(fieldRename: FieldRename.snake, genericArgumentFactories: true)
  const factory GithubResponse({
    required int totalCount,
    required bool incompleteResults,
    required List<T> items,
  }) = _GithubResponse<T>;

  factory GithubResponse.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$GithubResponseFromJson(json, fromJsonT);
}
