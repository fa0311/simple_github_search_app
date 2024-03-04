import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:integration_test/integration_test.dart';
import 'package:simple_github_search_app/app/repository/page.dart';
import 'package:simple_github_search_app/app/search/page.dart';
import 'package:simple_github_search_app/component/part/repository_card.dart';
import 'package:simple_github_search_app/main.dart';
import 'package:simple_github_search_app/util/logger.dart';

extension on Finder {
  // 前から2番目の要素を取得
  Finder get start => at(1);

  // 後ろから2番目の要素を取得
  Finder get end => at(evaluate().length - 2);
}

extension on WidgetTester {
  Future<void> wait(int count) async {
    for (var i = 0; i < count; i++) {
      await pump(const Duration(milliseconds: 100));
    }
  }
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();

  testWidgets('GitHub インテグレーションテスト', (WidgetTester tester) async {
    await tester.pumpWidget(ProviderScope(observers: [ProviderLogger()], child: const GithubSearchApp()));

    // レンダリングが完了するまで待つ
    await tester.wait(5);

    // 検索バーをタップ
    await tester.tap(find.byType(TextField));

    // レンダリングが完了するまで待つ
    await tester.wait(5);

    // 文字を入力
    await tester.enterText(find.byType(TextField), 'flutter');

    // レンダリングが完了するまで待つ
    await tester.wait(5);

    // エンターキーを押す
    await tester.testTextInput.receiveAction(TextInputAction.done);

    // レンダリングが完了するまで待つ
    // ネットワークリクエストが発生するため、時間がかかる
    await tester.wait(20);

    // 検索結果に遷移していることを確認
    expect(find.byType(SearchPage), findsWidgets);
    expect(find.byType(RepositoryCard).first, findsWidgets);

    // 下にスクロールする
    for (var i = 0; i < 5; i++) {
      await tester.timedDrag(
        find.byType(RepositoryCard).end,
        const Offset(0, -500),
        const Duration(milliseconds: 200),
      );
      await tester.wait(15);
    }

    // 上にスクロールする
    for (var i = 0; i < 5; i++) {
      await tester.timedDrag(
        find.byType(RepositoryCard).start,
        const Offset(0, 500),
        const Duration(milliseconds: 200),
      );
      await tester.wait(15);
    }

    // リロード
    await tester.timedDrag(find.byType(RepositoryCard).start, const Offset(0, 500), const Duration(milliseconds: 1500));

    // レンダリングが完了するまで待つ
    // ネットワークリクエストが発生するため、時間がかかる
    await tester.wait(20);

    // 検索結果に遷移していることを確認
    expect(find.byType(SearchPage), findsWidgets);
    expect(find.byType(RepositoryCard).first, findsWidgets);

    // 一番上の検索結果をタップ
    await tester.tap(find.byType(RepositoryCard).first);

    // レンダリングが完了するまで待つ
    // キャッシュがあるため、時間がかからない
    await tester.wait(5);

    // リポジトリ詳細に遷移していることを確認
    expect(find.byType(RepositoryPage), findsWidgets);

    // 下にスクロールする
    await tester.timedDrag(
      find.byType(RepositoryPage),
      const Offset(0, -500),
      const Duration(milliseconds: 200),
    );
    await tester.wait(15);

    // 上にスクロールする
    await tester.timedDrag(
      find.byType(RepositoryPage),
      const Offset(0, 500),
      const Duration(milliseconds: 200),
    );
    await tester.wait(15);

    // 下から上にスクロールしてリロードする
    await tester.timedDrag(find.byType(RepositoryPage), const Offset(0, 500), const Duration(milliseconds: 1500));

    // レンダリングが完了するまで待つ
    // ネットワークリクエストが発生するため、時間がかかる
    await tester.wait(20);

    // リポジトリ詳細に遷移していることを確認
    expect(find.byType(RepositoryPage), findsWidgets);

    // 戻る
    await tester.pageBack();

    // レンダリングが完了するまで待つ
    await tester.wait(5);

    // TypeScript を検索

    // 検索バーをタップ
    await tester.tap(find.byType(TextField));

    // レンダリングが完了するまで待つ
    await tester.wait(5);

    // 文字を入力
    await tester.enterText(find.byType(TextField), 'typescript');

    // レンダリングが完了するまで待つ
    await tester.wait(5);

    // エンターキーを押す
    await tester.testTextInput.receiveAction(TextInputAction.done);

    // レンダリングが完了するまで待つ
    // ネットワークリクエストが発生するため、時間がかかる
    await tester.wait(20);

    // 検索結果に遷移していることを確認
    expect(find.byType(SearchPage), findsWidgets);

    // 一番上の検索結果をタップ
    await tester.tap(find.byType(RepositoryCard).first);

    // レンダリングが完了するまで待つ
    // キャッシュがあるため、時間がかからない
    await tester.wait(5);

    // 戻る
    await tester.pageBack();

    // レンダリングが完了するまで待つ
    await tester.wait(5);

    // 戻る
    await tester.pageBack();

    // レンダリングが完了するまで待つ
    await tester.wait(5);
  });
}
