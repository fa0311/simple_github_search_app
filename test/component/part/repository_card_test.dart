import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/component/part/repository_card.dart';

import '../../test_util/component.dart';

void main() {
  testWidgets('RepositoryCard の初期状態', (WidgetTester tester) async {
    await tester.pumpWidget(
      TestComponentUtil.setApp(
        RepositoryCard(
          title: const Text('title'),
          description: const Text('description'),
          avatarUrl: 'avatarUrl',
          topics: const ['topic1', 'topic2'],
          child: const SizedBox(width: 100, height: 100),
          onTap: () {},
          onTopicTap: (_) {},
        ),
      ),
    );
    expect(find.byType(RepositoryCard), findsOneWidget);
    expect(find.text('title'), findsOneWidget);
    expect(find.text('description'), findsOneWidget);
    expect(find.text('topic1'), findsOneWidget);
    expect(find.text('topic2'), findsOneWidget);
  });

  testWidgets('RepositoryCard の onTap が動いているか', (WidgetTester tester) async {
    var onTap = false;
    await tester.pumpWidget(
      TestComponentUtil.setApp(
        RepositoryCard(
          title: const Text('title'),
          description: const Text('description'),
          avatarUrl: 'avatarUrl',
          child: const SizedBox(width: 100, height: 100),
          onTap: () => onTap = true,
        ),
      ),
    );

    expect(onTap, isFalse);

    // カードをタップ
    await tester.tap(find.byType(RepositoryCard));
    expect(onTap, isTrue);
  });

  testWidgets('RepositoryCard の onTopicTap が動いているか', (WidgetTester tester) async {
    var onTopicTap = '';
    await tester.pumpWidget(
      TestComponentUtil.setApp(
        RepositoryCard(
          title: const Text('title'),
          description: const Text('description'),
          avatarUrl: 'avatarUrl',
          topics: const ['topic1', 'topic2'],
          child: const SizedBox(width: 100, height: 100),
          onTopicTap: (topic) => onTopicTap = topic,
        ),
      ),
    );

    expect(onTopicTap, '');

    // topic1 をタップ
    await tester.tap(find.text('topic1'));
    expect(onTopicTap, 'topic1');
  });
}
