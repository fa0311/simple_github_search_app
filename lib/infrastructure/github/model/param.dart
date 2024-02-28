import 'package:freezed_annotation/freezed_annotation.dart';

part 'param.freezed.dart';
part 'param.g.dart';

@freezed
class GithubSearchRepositoriesParam with _$GithubSearchRepositoriesParam {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubSearchRepositoriesParam({
    required String q,
    @Default(SearchRepositoriesSortParam.bestMatch) SearchRepositoriesSortParam sort,
    @Default(SearchRepositoriesOrderParam.desc) SearchRepositoriesOrderParam order,
    @Default(30) int perPage,
    @Default(1) int page,
  }) = _GithubSearchRepositoriesParam;

  factory GithubSearchRepositoriesParam.fromJson(Map<String, dynamic> json) =>
      _$GithubSearchRepositoriesParamFromJson(json);
}

enum SearchRepositoriesSortParam {
  @JsonValue('')
  bestMatch,
  stars,
  forks,
  @JsonValue('help-wanted-issues')
  helpWantedIssues,
  updated;

  const SearchRepositoriesSortParam();
}

enum SearchRepositoriesOrderParam {
  asc('asc'),
  desc('desc');

  const SearchRepositoriesOrderParam(this.name);
  final String name;
}
