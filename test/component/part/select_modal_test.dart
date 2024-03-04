import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/component/part/select_modal.dart';

import '../../test_util/component.dart';

void main() {
  testWidgets('SelectModalTile の初期状態', (WidgetTester tester) async {
    await tester.pumpWidget(
      TestComponentUtil.setApp(
        const SelectModalTile(
          items: [
            Text('テキスト'),
          ],
        ),
      ),
    );
    expect(find.byType(SelectModalTile), findsOneWidget);
  });

  testWidgets('SelectModalTile の show', (WidgetTester tester) async {
    await tester.pumpWidget(
      TestComponentUtil.setBuilder(
        builder: (BuildContext context) {
          return ElevatedButton(
            onPressed: () {
              SelectModalTile.show(
                context,
                items: [
                  const Text('テキスト'),
                ],
              );
            },
            child: const Text('ボタン'),
          );
        },
      ),
    );

    // まだ表示されていない
    expect(find.byType(SelectModalTile), findsNothing);

    // ボタンをタップ
    await tester.tap(find.text('ボタン'));
    await tester.pumpAndSettle();

    // 表示されている
    expect(find.byType(SelectModalTile), findsOneWidget);

    // テキストが表示されている
    expect(find.text('テキスト'), findsOneWidget);
  });
}
