import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_github_search_app/app/router.dart';
import 'package:simple_github_search_app/component/part/app_icon.dart';
import 'package:simple_github_search_app/component/part/search_field_bar.dart';
import 'package:simple_github_search_app/util/constant.dart';

@RoutePage()
class GithubSearchAppPage extends HookConsumerWidget {
  const GithubSearchAppPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            title: SearchFieldBar(
              onSubmitted: (value) async {
                if (value.isNotEmpty) {
                  await context.router.push(SearchRoute(query: value));
                }
              },
            ),
            actions: const [],
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppIcon(
                    name: Constant.appForegroundIcon,
                    size: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Text(
                      Constant.appName,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      title: Text(AppLocalizations.of(context)!.homeTitle),
                      leading: const Icon(Icons.home_outlined),
                      onTap: () {
                        context.router.popUntilRoot();
                      },
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text(AppLocalizations.of(context)!.settingPageTitle),
                leading: const Icon(Icons.settings_outlined),
                onTap: () {
                  context.router.push(const SettingRoute());
                },
              ),
              ListTile(
                title: Text(AppLocalizations.of(context)!.infoPageTitle),
                leading: const Icon(Icons.info_outline),
                onTap: () {
                  context.router.push(const InfoRoute());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
