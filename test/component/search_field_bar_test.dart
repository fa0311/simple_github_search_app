import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/component/search_field_bar.dart';

import '../test_util/component.dart';

void main() {
  testWidgets('SearchFieldBar の初期状態', (WidgetTester tester) async {
    await tester.pumpWidget(
      TestComponentUtil.setApp(
        SearchFieldBar(
          onSubmitted: (_) {},
          defaultText: 'defaultText',
          hintText: 'hintText',
        ),
      ),
    );

    expect(find.byType(SearchFieldBar), findsOneWidget);
    expect(find.text('defaultText'), findsOneWidget);
    expect(find.text('hintText'), findsOneWidget);
  });

  testWidgets('SearchFieldBar の onSubmitted が動いているか', (WidgetTester tester) async {
    var onSubmitted = '';
    await tester.pumpWidget(
      TestComponentUtil.setApp(
        SearchFieldBar(
          onSubmitted: (text) => onSubmitted = text,
        ),
      ),
    );

    expect(onSubmitted, '');

    // テキストを入力して完了
    await tester.enterText(find.byType(TextField), 'text');
    await tester.testTextInput.receiveAction(TextInputAction.done);
    expect(onSubmitted, 'text');
  });
}
