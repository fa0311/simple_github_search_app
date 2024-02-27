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
              _$SearchRepositoriesSortParamEnumMap, json['sort']),
          order: $enumDecodeNullable(
              _$SearchRepositoriesOrderParamEnumMap, json['order']),
          perPage: json['per_page'] as int?,
          page: json['page'] as int?,
        );

Map<String, dynamic> _$$GithubSearchRepositoriesParamImplToJson(
        _$GithubSearchRepositoriesParamImpl instance) =>
    <String, dynamic>{
      'q': instance.q,
      'sort': _$SearchRepositoriesSortParamEnumMap[instance.sort],
      'order': _$SearchRepositoriesOrderParamEnumMap[instance.order],
      'per_page': instance.perPage,
      'page': instance.page,
    };

const _$SearchRepositoriesSortParamEnumMap = {
  SearchRepositoriesSortParam.stars: 'stars',
  SearchRepositoriesSortParam.forks: 'forks',
  SearchRepositoriesSortParam.helpWantedIssues: 'helpWantedIssues',
  SearchRepositoriesSortParam.updated: 'updated',
};

const _$SearchRepositoriesOrderParamEnumMap = {
  SearchRepositoriesOrderParam.asc: 'asc',
  SearchRepositoriesOrderParam.desc: 'desc',
};
