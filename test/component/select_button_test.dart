import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/component/select_menu_button.dart';

import '../test_util/component.dart';

void main() {
  testWidgets('SelectMenuButton の初期状態', (WidgetTester tester) async {
    await tester.pumpWidget(
      TestComponentUtil.setApp(
        const SelectMenuButton(
          items: [
            PopupMenuItem(
              child: Text('item1'),
            ),
            PopupMenuItem(
              child: Text('item2'),
            ),
          ],
        ),
      ),
    );
    expect(find.byType(SelectMenuButton), findsOneWidget);

    // ボタンのアイコンが表示されているか
    expect(find.byIcon(Icons.sort), findsOneWidget);

    // メニューが表示されていないことを確認
    expect(find.text('item1'), findsNothing);
    expect(find.text('item2'), findsNothing);
  });

  testWidgets('SelectMenuButton の onChanged が動いているか', (WidgetTester tester) async {
    var onChanged = '';
    await tester.pumpWidget(
      TestComponentUtil.setApp(
        SelectMenuButton(
          items: [
            PopupMenuItem(
              child: const Text('item1'),
              onTap: () => onChanged = 'item1',
            ),
            PopupMenuItem(
              child: const Text('item2'),
              onTap: () => onChanged = 'item2',
            ),
          ],
        ),
      ),
    );

    expect(onChanged, '');

    // ボタンをタップ
    await tester.tap(find.byType(SelectMenuButton));
    await tester.pumpAndSettle();

    // メニューが表示されていることを確認
    expect(find.text('item1'), findsOneWidget);
    expect(find.text('item2'), findsOneWidget);

    await tester.tap(find.text('item1'));
    await tester.pumpAndSettle();

    // メニューが閉じていることを確認
    expect(find.text('item1'), findsNothing);
    expect(find.text('item2'), findsNothing);

    expect(onChanged, 'item1');
  });
}
