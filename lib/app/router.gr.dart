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
    RepositoryRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<RepositoryRouteArgs>(
          orElse: () => RepositoryRouteArgs(
                owner: pathParams.getString('owner'),
                name: pathParams.getString('name'),
              ));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: RepositoryPage(
          key: args.key,
          owner: args.owner,
          name: args.name,
          repository: args.repository,
        )),
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
/// [RepositoryPage]
class RepositoryRoute extends PageRouteInfo<RepositoryRouteArgs> {
  RepositoryRoute({
    Key? key,
    required String owner,
    required String name,
    GithubRepository? repository,
    List<PageRouteInfo>? children,
  }) : super(
          RepositoryRoute.name,
          args: RepositoryRouteArgs(
            key: key,
            owner: owner,
            name: name,
            repository: repository,
          ),
          rawPathParams: {
            'owner': owner,
            'name': name,
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
    required this.name,
    this.repository,
  });

  final Key? key;

  final String owner;

  final String name;

  final GithubRepository? repository;

  @override
  String toString() {
    return 'RepositoryRouteArgs{key: $key, owner: $owner, name: $name, repository: $repository}';
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
