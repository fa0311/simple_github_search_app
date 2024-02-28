import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:simple_github_search_app/app/page.dart';
import 'package:simple_github_search_app/app/search/page.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: GithubSearchAppRoute.page),
        AutoRoute(path: '/search', page: SearchRoute.page),
      ];
}
