import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_github_search_app/component/widget/error_log_view.dart';
import 'package:simple_github_search_app/provider/package_info.dart';
import 'package:simple_github_search_app/util/constant.dart';

@RoutePage()
class InfoLicensePage extends HookConsumerWidget {
  const InfoLicensePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final year = DateTime.now().year;
    return Scaffold(
      body: ref.watch(getPackageInfoProvider).when(
            data: (info) {
              return LicensePage(
                applicationName: Constant.appName,
                applicationVersion: info.version,
                applicationIcon: const FlutterLogo(),
                applicationLegalese: '© $year ${Constant.appName}',
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: ErrorLogView.new,
          ),
    );
  }
}
