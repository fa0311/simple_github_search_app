import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_github_search_app/app/router.dart';
import 'package:simple_github_search_app/component/widget/error_log_view.dart';
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
        title: Text(AppLocalizations.of(context)!.infoPageTitle),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(AppLocalizations.of(context)!.infoHomePage),
            onTap: () async {
              await UrlLaunchUtil.github(Constant.githubUser, Constant.githubRepository);
            },
          ),
          ListTile(
            title: Text(AppLocalizations.of(context)!.infoLicenses),
            onTap: () {
              context.router.push(const InfoLicenseRoute());
            },
          ),
          ListTile(
            title: Text(AppLocalizations.of(context)!.infoVersion),
            subtitle: ref.watch(getPackageInfoProvider).when(
                  data: (data) => Text(data.version),
                  loading: () => const SizedBox(),
                  error: ErrorLogView.new,
                ),
          ),
        ],
      ),
    );
  }
}
