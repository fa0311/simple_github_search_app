import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_github_search_app/app/setting/page.dart';
import 'package:simple_github_search_app/component/part/select_modal.dart';
import 'package:simple_github_search_app/component/part/text_field_dialog.dart';
import 'package:simple_github_search_app/provider/key_value_storage/secure_storage.dart';

import '../../test_util/component.dart';

class GithubTokenSettingMock extends GithubTokenSetting {
  @override
  Future<String?> build() async {
    return null;
  }
}

void main() {
  testWidgets('設定ページの初期状態', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          githubTokenSettingProvider.overrideWith(() {
            return GithubTokenSettingMock();
          }),
        ],
        child: TestComponentUtil.setApp(
          const SettingPage(),
          isLocalizations: true,
        ),
      ),
    );
    expect(find.byType(SettingPage), findsOneWidget);
  });

  testWidgets('設定ページのタップ', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          githubTokenSettingProvider.overrideWith(() {
            return GithubTokenSettingMock();
          }),
        ],
        child: TestComponentUtil.setApp(
          const SettingPage(),
          isLocalizations: true,
        ),
      ),
    );
    expect(find.byType(SettingPage), findsOneWidget);

    // 表示されるまで待つ
    await tester.pump(const Duration(seconds: 1));

    // 上から順にタップする
    await tester.tap(find.byType(ListTile).at(0));

    // 表示されるまで待つ
    await tester.pump(const Duration(seconds: 1));

    // タップしたらダイアログが表示される
    expect(find.byType(SelectModalTile), findsOneWidget);

    // 周りをタップしてダイアログを閉じる
    await tester.tapAt(Offset.zero);

    // 表示されるまで待つ
    await tester.pump(const Duration(seconds: 1));

    // 上から順にタップする
    await tester.tap(find.byType(ListTile).at(1));

    // 表示されるまで待つ
    await tester.pump(const Duration(seconds: 1));

    // タップしたらダイアログが表示される
    expect(find.byType(SelectModalTile), findsOneWidget);

    // 周りをタップしてダイアログを閉じる
    await tester.tapAt(Offset.zero);

    // 表示されるまで待つ
    await tester.pump(const Duration(seconds: 1));

    // 上から順にタップする
    await tester.tap(find.byType(ListTile).at(2));

    // 表示されるまで待つ
    await tester.pump(const Duration(seconds: 1));

    // タップしたらダイアログが表示される
    expect(find.byType(TextFieldDialog), findsOneWidget);

    // 周りをタップしてダイアログを閉じる
    await tester.tapAt(Offset.zero);

    // 表示されるまで待つ
    await tester.pump(const Duration(seconds: 1));
  });
}
