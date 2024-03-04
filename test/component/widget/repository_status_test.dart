import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_github_search_app/component/part/color_ball.dart';
import 'package:simple_github_search_app/component/widget/repository_status.dart';
import 'package:simple_github_search_app/provider/linguist.dart';

import '../../test_util/component.dart';

void main() {
  testWidgets('RepositoryStatus の初期状態', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          getLinguistColorProvider('Dart').overrideWith((provider) => 0xFF000000),
        ],
        child: TestComponentUtil.setApp(
          const RepositoryStatus(
            lang: 'Dart',
            stargazersCount: 1,
            watchersCount: 2,
            forksCount: 3,
            openIssuesCount: 4,
          ),
        ),
      ),
    );
    expect(find.byType(RepositoryStatus), findsOneWidget);

    // 言語
    expect(find.text('Dart'), findsOneWidget);

    // 言語の色
    expect(find.byType(ColorBall), findsOneWidget);

    // スター数
    expect(find.text('1'), findsOneWidget);

    // ウォッチ数
    expect(find.text('2'), findsOneWidget);

    // フォーク数
    expect(find.text('3'), findsOneWidget);

    // オープンイシュー数
    expect(find.text('4'), findsOneWidget);
  });
}
