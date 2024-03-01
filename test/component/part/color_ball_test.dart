import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/component/part/color_ball.dart';

import '../../test_util/component.dart';

void main() {
  testWidgets('ColorBall の初期状態', (WidgetTester tester) async {
    await tester.pumpWidget(
      TestComponentUtil.setApp(
        const ColorBall(
          color: Colors.red,
        ),
      ),
    );
    expect(find.byType(ColorBall), findsOneWidget);
  });
}
