import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/app/page.dart';
import 'package:simple_github_search_app/component/part/app_icon.dart';

import '../test_util/component.dart';

void main() {
  testWidgets('インデックスページの初期状態', (WidgetTester tester) async {
    await tester.pumpWidget(
      TestComponentUtil.setApp(
        const GithubSearchAppPage(),
        isLocalizations: true,
      ),
    );
    expect(find.byType(GithubSearchAppPage), findsOneWidget);

    // AppIconがあるか
    expect(find.byType(AppIcon), findsOneWidget);

    // 検索バーがあるか
    expect(find.byType(TextField), findsOneWidget);

    // Drawerを開くボタンがあるか
    expect(find.byIcon(Icons.menu), findsOneWidget);

    // Drawerを開く
    await tester.tap(find.byIcon(Icons.menu));

    // Drawerのアニメーションが終わるまで待つ
    await tester.pump(const Duration(seconds: 1));

    expect(find.byType(Drawer), findsOneWidget);
  });
}
