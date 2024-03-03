// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    GithubSearchAppRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GithubSearchAppPage(),
      );
    },
    InfoLicenseRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InfoLicensePage(),
      );
    },
    InfoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InfoPage(),
      );
    },
    RepositoryRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<RepositoryRouteArgs>(
          orElse: () => RepositoryRouteArgs(
                owner: pathParams.getString('owner'),
                repo: pathParams.getString('repo'),
              ));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RepositoryPage(
          key: args.key,
          owner: args.owner,
          repo: args.repo,
        ),
      );
    },
    SearchRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<SearchRouteArgs>(
          orElse: () => SearchRouteArgs(
                query: queryParams.getString(
                  'query',
                  '',
                ),
                sort: queryParams.optString('sort'),
              ));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SearchPage(
          key: args.key,
          query: args.query,
          sort: args.sort,
        ),
      );
    },
    SettingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingPage(),
      );
    },
  };
}

/// generated route for
/// [GithubSearchAppPage]
class GithubSearchAppRoute extends PageRouteInfo<void> {
  const GithubSearchAppRoute({List<PageRouteInfo>? children})
      : super(
          GithubSearchAppRoute.name,
          initialChildren: children,
        );

  static const String name = 'GithubSearchAppRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [InfoLicensePage]
class InfoLicenseRoute extends PageRouteInfo<void> {
  const InfoLicenseRoute({List<PageRouteInfo>? children})
      : super(
          InfoLicenseRoute.name,
          initialChildren: children,
        );

  static const String name = 'InfoLicenseRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [InfoPage]
class InfoRoute extends PageRouteInfo<void> {
  const InfoRoute({List<PageRouteInfo>? children})
      : super(
          InfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'InfoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RepositoryPage]
class RepositoryRoute extends PageRouteInfo<RepositoryRouteArgs> {
  RepositoryRoute({
    Key? key,
    required String owner,
    required String repo,
    List<PageRouteInfo>? children,
  }) : super(
          RepositoryRoute.name,
          args: RepositoryRouteArgs(
            key: key,
            owner: owner,
            repo: repo,
          ),
          rawPathParams: {
            'owner': owner,
            'repo': repo,
          },
          initialChildren: children,
        );

  static const String name = 'RepositoryRoute';

  static const PageInfo<RepositoryRouteArgs> page =
      PageInfo<RepositoryRouteArgs>(name);
}

class RepositoryRouteArgs {
  const RepositoryRouteArgs({
    this.key,
    required this.owner,
    required this.repo,
  });

  final Key? key;

  final String owner;

  final String repo;

  @override
  String toString() {
    return 'RepositoryRouteArgs{key: $key, owner: $owner, repo: $repo}';
  }
}

/// generated route for
/// [SearchPage]
class SearchRoute extends PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    Key? key,
    String query = '',
    String? sort,
    List<PageRouteInfo>? children,
  }) : super(
          SearchRoute.name,
          args: SearchRouteArgs(
            key: key,
            query: query,
            sort: sort,
          ),
          rawQueryParams: {
            'query': query,
            'sort': sort,
          },
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<SearchRouteArgs> page = PageInfo<SearchRouteArgs>(name);
}

class SearchRouteArgs {
  const SearchRouteArgs({
    this.key,
    this.query = '',
    this.sort,
  });

  final Key? key;

  final String query;

  final String? sort;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, query: $query, sort: $sort}';
  }
}

/// generated route for
/// [SettingPage]
class SettingRoute extends PageRouteInfo<void> {
  const SettingRoute({List<PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
