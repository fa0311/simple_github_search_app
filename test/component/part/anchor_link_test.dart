import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/component/part/anchor_link.dart';

import '../../test_util/component.dart';

void main() {
  testWidgets('AnchorLink の初期状態', (WidgetTester tester) async {
    await tester.pumpWidget(
      TestComponentUtil.setApp(
        AnchorLink(
          text: 'テキスト',
          onTap: () => {},
          style: const TextStyle(),
        ),
      ),
    );
    expect(find.byType(AnchorLink), findsOneWidget);
  });

  testWidgets('AnchorLink のタップ', (WidgetTester tester) async {
    var isTapped = false;
    await tester.pumpWidget(
      TestComponentUtil.setApp(
        AnchorLink(
          text: 'テキスト',
          onTap: () => isTapped = true,
        ),
      ),
    );
    expect(find.byType(AnchorLink), findsOneWidget);
    await tester.tap(find.text('テキスト'));
    expect(isTapped, true);
  });
}
