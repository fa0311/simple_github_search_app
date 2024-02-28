// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GithubSearchRepositoriesParamImpl
    _$$GithubSearchRepositoriesParamImplFromJson(Map<String, dynamic> json) =>
        _$GithubSearchRepositoriesParamImpl(
          q: json['q'] as String,
          sort: $enumDecodeNullable(
                  _$SearchRepositoriesSortParamEnumMap, json['sort']) ??
              SearchRepositoriesSortParam.bestMatch,
          order: $enumDecodeNullable(
                  _$SearchRepositoriesOrderParamEnumMap, json['order']) ??
              SearchRepositoriesOrderParam.desc,
          perPage: json['per_page'] as int? ?? 30,
          page: json['page'] as int? ?? 1,
        );

Map<String, dynamic> _$$GithubSearchRepositoriesParamImplToJson(
        _$GithubSearchRepositoriesParamImpl instance) =>
    <String, dynamic>{
      'q': instance.q,
      'sort': _$SearchRepositoriesSortParamEnumMap[instance.sort]!,
      'order': _$SearchRepositoriesOrderParamEnumMap[instance.order]!,
      'per_page': instance.perPage,
      'page': instance.page,
    };

const _$SearchRepositoriesSortParamEnumMap = {
  SearchRepositoriesSortParam.bestMatch: '',
  SearchRepositoriesSortParam.stars: 'stars',
  SearchRepositoriesSortParam.forks: 'forks',
  SearchRepositoriesSortParam.helpWantedIssues: 'help-wanted-issues',
  SearchRepositoriesSortParam.updated: 'updated',
};

const _$SearchRepositoriesOrderParamEnumMap = {
  SearchRepositoriesOrderParam.asc: 'asc',
  SearchRepositoriesOrderParam.desc: 'desc',
};
