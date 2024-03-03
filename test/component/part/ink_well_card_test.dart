import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/component/part/ink_well_card.dart';

import '../../test_util/component.dart';

void main() {
  testWidgets('InkWellCard の初期状態', (WidgetTester tester) async {
    await tester.pumpWidget(
      TestComponentUtil.setApp(
        InkWellCard(
          onTap: () {},
          color: Colors.red,
          child: const SizedBox(width: 100, height: 100),
        ),
      ),
    );
    expect(find.byType(InkWellCard), findsOneWidget);
  });

  testWidgets('InkWellCard の onTap が動いているか', (WidgetTester tester) async {
    var onTap = false;
    await tester.pumpWidget(
      TestComponentUtil.setApp(
        InkWellCard(
          onTap: () => onTap = true,
          color: Colors.red,
          child: const SizedBox(width: 100, height: 100),
        ),
      ),
    );

    expect(onTap, isFalse);

    // カードをタップ
    await tester.tap(find.byType(InkWellCard));
    expect(onTap, isTrue);
  });
}
