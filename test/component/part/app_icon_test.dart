import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/component/part/app_icon.dart';

import '../../test_util/assets.dart';
import '../../test_util/component.dart';

void main() {
  testWidgets('AppIcon の初期状態', (WidgetTester tester) async {
    await tester.pumpWidget(
      TestComponentUtil.setApp(
        const AppIcon(
          name: TestUtilAssets.iconPath,
          size: 100,
        ),
      ),
    );
    expect(find.byType(AppIcon), findsOneWidget);
  });

  testWidgets('AppIcon の ダークモードの初期状態', (WidgetTester tester) async {
    await tester.pumpWidget(
      TestComponentUtil.setApp(
        const AppIcon(
          name: TestUtilAssets.iconPath,
          size: 100,
        ),
      ),
    );
    expect(find.byType(AppIcon), findsOneWidget);
  });
}
