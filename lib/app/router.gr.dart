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
    SearchRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<SearchRouteArgs>(
          orElse: () => SearchRouteArgs(
                query: pathParams.getString('query'),
                sort: pathParams.optString('sort'),
                order: pathParams.optString('order'),
              ));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SearchPage(
          key: args.key,
          query: args.query,
          sort: args.sort,
          order: args.order,
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
/// [SearchPage]
class SearchRoute extends PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    Key? key,
    required String query,
    String? sort,
    String? order,
    List<PageRouteInfo>? children,
  }) : super(
          SearchRoute.name,
          args: SearchRouteArgs(
            key: key,
            query: query,
            sort: sort,
            order: order,
          ),
          rawPathParams: {
            'query': query,
            'sort': sort,
            'order': order,
          },
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<SearchRouteArgs> page = PageInfo<SearchRouteArgs>(name);
}

class SearchRouteArgs {
  const SearchRouteArgs({
    this.key,
    required this.query,
    this.sort,
    this.order,
  });

  final Key? key;

  final String query;

  final String? sort;

  final String? order;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, query: $query, sort: $sort, order: $order}';
  }
}
