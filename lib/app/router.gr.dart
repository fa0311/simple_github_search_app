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
    }
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
