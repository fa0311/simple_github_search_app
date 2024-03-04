import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_github_search_app/app/repository/page.dart';
import 'package:simple_github_search_app/provider/github/repository.dart';
import 'package:simple_github_search_app/provider/github_user_content.dart';

import '../../test_util/component.dart';
import '../../test_util/github.dart';

void main() {
  testWidgets('リポジトリページの初期状態', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          getGithubRepositoryRawProvider('flutter', 'flutter').overrideWith((_) {
            return GitHubUtil.getRepository();
          }),
          getGithubReadmeProvider('flutter', 'flutter', 'master').overrideWith((_) {
            return 'It is a readme test';
          }),
        ],
        child: TestComponentUtil.setApp(
          const RepositoryPage(
            owner: 'flutter',
            repo: 'flutter',
          ),
          isLocalizations: true,
        ),
      ),
    );
    expect(find.byType(RepositoryPage), findsOneWidget);

    // 表示されるまで待つ
    await tester.pump(const Duration(seconds: 1));

    expect(find.text(GitHubUtil.getRepository().description ?? ''), findsOneWidget);

    expect(find.text('It is a readme test'), findsOneWidget);
  });
}
