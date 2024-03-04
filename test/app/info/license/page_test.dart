import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:simple_github_search_app/app/info/license/page.dart';
import 'package:simple_github_search_app/provider/package_info.dart';

import '../../../test_util/component.dart';

void main() {
  testWidgets('ライセンスページの初期状態', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          getPackageInfoProvider.overrideWith((_) {
            return PackageInfo(
              appName: 'it is appName',
              packageName: 'it is packageName',
              version: 'it is version',
              buildNumber: 'it is buildNumber',
            );
          }),
        ],
        child: TestComponentUtil.setApp(
          const InfoLicensePage(),
          isLocalizations: true,
        ),
      ),
    );
    expect(find.byType(InfoLicensePage), findsOneWidget);

    // 表示されるまで待つ
    await tester.pump(const Duration(seconds: 1));

    expect(find.text('it is appName'), findsOneWidget);

    expect(find.text('it is version'), findsOneWidget);
  });
}
