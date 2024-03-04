import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_github_search_app/main.dart';

void main() {
  testWidgets('GithubSearchApp のテスト', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: GithubSearchApp(),
      ),
    );
    expect(find.byType(GithubSearchApp), findsOneWidget);
  });
}
