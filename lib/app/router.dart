import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:simple_github_search_app/app/info/license/page.dart';
import 'package:simple_github_search_app/app/info/page.dart';
import 'package:simple_github_search_app/app/page.dart';
import 'package:simple_github_search_app/app/repository/page.dart';
import 'package:simple_github_search_app/app/search/page.dart';
import 'package:simple_github_search_app/app/setting/page.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: GithubSearchAppRoute.page, initial: true),
        AutoRoute(path: '/search', page: SearchRoute.page, guards: [AuthGuard()]),
        AutoRoute(path: '/repository/:owner/:repo', page: RepositoryRoute.page, guards: [AuthGuard()]),
        AutoRoute(path: '/setting', page: SettingRoute.page, guards: [AuthGuard()]),
        AutoRoute(path: '/info', page: InfoRoute.page, guards: [AuthGuard()]),
        AutoRoute(path: '/info/license', page: InfoLicenseRoute.page, guards: [AuthGuard()]),
      ];
}

/// Guard されているページに遷移する際にスタックが空の場合は初期ページを先にスタックに追加する
class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (router.stack.isEmpty) {
      router.push(const GithubSearchAppRoute());
    }
    resolver.next();
  }
}
