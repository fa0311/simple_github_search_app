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
        AutoRoute(path: '/', page: GithubSearchAppRoute.page),
        AutoRoute(path: '/search', page: SearchRoute.page),
        AutoRoute(path: '/repository/:owner/:repo', page: RepositoryRoute.page),
        AutoRoute(path: '/setting', page: SettingRoute.page),
        AutoRoute(path: '/info', page: InfoRoute.page),
        AutoRoute(path: '/info/license', page: InfoLicenseRoute.page),
      ];
}
