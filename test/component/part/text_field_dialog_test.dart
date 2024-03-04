import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/component/part/text_field_dialog.dart';

import '../../test_util/component.dart';

void main() {
  testWidgets('TextFieldDialog の初期状態', (WidgetTester tester) async {
    await tester.pumpWidget(
      TestComponentUtil.setApp(
        TextFieldDialog(
          onSubmitted: (_) async => null,
          defaultText: '',
          title: const Text('タイトル'),
          button: const Text('ボタン'),
          autofillHints: const [],
          label: const Text('ラベル'),
        ),
      ),
    );
    expect(find.byType(TextFieldDialog), findsOneWidget);
  });

  testWidgets('TextFieldDialog の onSubmitted', (WidgetTester tester) async {
    var submitted = false;
    await tester.pumpWidget(
      TestComponentUtil.setApp(
        TextFieldDialog(
          onSubmitted: (_) async {
            submitted = true;
            return null;
          },
          defaultText: '',
          title: const Text('タイトル'),
          button: const Text('ボタン'),
          autofillHints: const [],
          label: const Text('ラベル'),
        ),
      ),
    );

    await tester.tap(find.text('ボタン'));
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextField), 'テキスト');
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();

    expect(submitted, true);
  });

  testWidgets('TextFieldDialog の フォーカス', (WidgetTester tester) async {
    await tester.pumpWidget(
      TestComponentUtil.setBuilder(
        builder: (BuildContext context) {
          return ElevatedButton(
            onPressed: () {
              TextFieldDialog.show(
                context,
                onSubmitted: (_) async => null,
                defaultText: '',
                title: const Text('タイトル'),
                button: const Text('テキスト'),
              );
            },
            child: const Text('ボタン'),
          );
        },
      ),
    );

    await tester.tap(find.text('ボタン'));
    await tester.pumpAndSettle();

    // 開いたときにセレクトされている
    final textField = tester.widget<TextField>(find.byType(TextField));
    expect(textField.controller!.selection.baseOffset, 0);

    // 文字を入力する
    await tester.enterText(find.byType(TextField), '入力テスト');

    // TextField に入力した文字を確認
    expect(find.text('入力テスト'), findsOneWidget);
  });

  testWidgets('TextFieldDialog の 全文選択', (WidgetTester tester) async {
    await tester.pumpWidget(
      TestComponentUtil.setBuilder(
        builder: (BuildContext context) {
          return ElevatedButton(
            onPressed: () {
              TextFieldDialog.show(
                context,
                onSubmitted: (_) async => null,
                defaultText: 'デフォルトテキスト',
                title: const Text('タイトル'),
                button: const Text('テキスト'),
              );
            },
            child: const Text('ボタン'),
          );
        },
      ),
    );

    await tester.tap(find.text('ボタン'));
    await tester.pumpAndSettle();

    // 開いたときにセレクトされている
    final textField = tester.widget<TextField>(find.byType(TextField));
    expect(textField.controller!.selection.baseOffset, 0);

    // デフォルトテキストが表示されている
    expect(textField.controller!.selection.extentOffset, 9);

    // 文字を入力する
    await tester.enterText(find.byType(TextField), '入力テスト');

    // TextField に入力した文字を確認
    expect(find.text('入力テスト'), findsOneWidget);

    // デフォルトテキストが削除されている
    expect(find.text('デフォルトテキスト'), findsNothing);
  });

  testWidgets('TextFieldDialog の show', (WidgetTester tester) async {
    await tester.pumpWidget(
      TestComponentUtil.setBuilder(
        builder: (BuildContext context) {
          return ElevatedButton(
            onPressed: () {
              TextFieldDialog.show(
                context,
                onSubmitted: (_) async => null,
                defaultText: '',
                title: const Text('タイトル'),
                button: const Text('テキスト'),
              );
            },
            child: const Text('ボタン'),
          );
        },
      ),
    );

    // まだ表示されていない
    expect(find.byType(TextFieldDialog), findsNothing);

    // ボタンをタップ
    await tester.tap(find.text('ボタン'));
    await tester.pumpAndSettle();

    // 表示されている
    expect(find.byType(TextFieldDialog), findsOneWidget);

    // テキストが表示されている
    expect(find.text('タイトル'), findsOneWidget);
    expect(find.text('テキスト'), findsOneWidget);
  });
}
