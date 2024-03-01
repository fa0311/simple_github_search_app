import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_github_search_app/app/router.dart';
import 'package:simple_github_search_app/provider/package_info.dart';
import 'package:simple_github_search_app/util/constant.dart';
import 'package:simple_github_search_app/util/url_launch.dart';

@RoutePage()
class InfoPage extends HookConsumerWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Info'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Github'),
            onTap: () async {
              await UrlLaunchUtil.github(Constant.githubUser, Constant.githubRepository);
            },
          ),
          ListTile(
            title: const Text('License'),
            onTap: () {
              context.router.push(const InfoLicenseRoute());
            },
          ),
          ListTile(
            title: const Text('バージョン'),
            subtitle: ref.watch(getPackageInfoProvider).when(
                  data: (data) => Text(data.version),
                  loading: () => const Text('Loading...'),
                  error: (e, s) => const Text('Error'),
                ),
          ),
        ],
      ),
    );
  }
}
