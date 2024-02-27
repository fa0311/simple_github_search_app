import 'package:freezed_annotation/freezed_annotation.dart';

part 'param.freezed.dart';
part 'param.g.dart';

@freezed
class GithubSearchRepositoriesParam with _$GithubSearchRepositoriesParam {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubSearchRepositoriesParam({
    required String q,
    SearchRepositoriesSortParam? sort,
    SearchRepositoriesOrderParam? order,
    int? perPage,
    int? page,
  }) = _GithubSearchRepositoriesParam;

  factory GithubSearchRepositoriesParam.fromJson(Map<String, dynamic> json) =>
      _$GithubSearchRepositoriesParamFromJson(json);
}

enum SearchRepositoriesSortParam {
  stars('stars'),
  forks('forks'),
  helpWantedIssues('help-wanted-issues'),
  updated('updated');

  const SearchRepositoriesSortParam(this.name);
  final String name;
}

enum SearchRepositoriesOrderParam {
  asc('asc'),
  desc('desc');

  const SearchRepositoriesOrderParam(this.name);
  final String name;
}
