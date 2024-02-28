import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/component/custom_scroll_listener.dart';

import '../test_util/component.dart';

void main() {
  testWidgets('CustomScrollListener の初期状態', (WidgetTester tester) async {
    await tester.pumpWidget(
      TestComponentUtil.setApp(
        CustomScrollListener(
          slivers: List.generate(10, (index) => SliverToBoxAdapter(child: Container(height: 100))),
        ),
      ),
    );
    expect(find.byType(CustomScrollListener), findsOneWidget);
  });

  testWidgets('CustomScrollListener の event が動いているか', (WidgetTester tester) async {
    var onReached = false;
    await tester.pumpWidget(
      TestComponentUtil.setApp(
        CustomScrollListener(
          onTopReached: () => onReached = false,
          onEndReached: () => onReached = true,
          slivers: List.generate(10, (index) => SliverToBoxAdapter(child: Container(height: 100))),
        ),
      ),
    );

    expect(onReached, isFalse);

    // 一番下までスクロール
    await tester.drag(find.byType(CustomScrollView), const Offset(0, -1000));
    expect(onReached, isTrue);

    // 一番上までスクロール
    await tester.drag(find.byType(CustomScrollView), const Offset(0, 1000));
    expect(onReached, isFalse);

    // 一番下までスクロール
    await tester.drag(find.byType(CustomScrollView), const Offset(0, -1000));
    expect(onReached, isTrue);

    // 中途半端な位置までスクロール
    await tester.drag(find.byType(CustomScrollView), const Offset(0, 200));
    expect(onReached, isTrue);
  });

  testWidgets('CustomScrollListener の 閾値が動いているか', (WidgetTester tester) async {
    var onReached = false;
    await tester.pumpWidget(
      TestComponentUtil.setApp(
        CustomScrollListener(
          threshold: 200,
          onTopReached: () => onReached = false,
          slivers: List.generate(10, (index) => SliverToBoxAdapter(child: Container(height: 100))),
        ),
      ),
    );

    expect(onReached, isFalse);

    // onTopReached が反応しない位置までスクロール
    await tester.drag(find.byType(CustomScrollView), const Offset(0, -250));
    onReached = true;

    // ちょっと上にスクロール
    await tester.drag(find.byType(CustomScrollView), const Offset(0, 25));
    expect(onReached, isTrue);

    // ギリギリまでスクロール
    await tester.drag(find.byType(CustomScrollView), const Offset(0, 25));
    expect(onReached, isTrue);

    // 1px だけ上にスクロール
    await tester.drag(find.byType(CustomScrollView), const Offset(0, 1));
    expect(onReached, isFalse);
  });
}
