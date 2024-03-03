import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/component/widget/error_log_view.dart';

import '../../test_util/component.dart';

void main() {
  testWidgets('ErrorLogView の初期状態', (WidgetTester tester) async {
    await tester.pumpWidget(
      TestComponentUtil.setApp(
        const ErrorLogView(
          'error',
          null,
        ),
        isLocalizations: true,
      ),
    );
    expect(find.byType(ErrorLogView), findsOneWidget);
  });

  testWidgets('ErrorLogView のダイヤログ', (WidgetTester tester) async {
    await tester.pumpWidget(
      TestComponentUtil.setApp(
        const ErrorLogView(
          'error',
          null,
        ),
        isLocalizations: true,
      ),
    );

    expect(find.byType(ErrorLogView), findsOneWidget);

    // タップしてダイヤログ を表示
    await tester.tap(find.byType(ErrorLogView));
    await tester.pumpAndSettle();

    // Text が少なくとも一つ以上は表示されているか
    expect(find.byType(Text), findsWidgets);

    // TextButton が表示されているか
    expect(find.byType(TextButton), findsOneWidget);

    // タップしてGitHubのIssueを開く
    await tester.tap(find.byType(TextButton));
    await tester.pumpAndSettle();
  });

  testWidgets('DioException のテスト', (WidgetTester tester) async {
    final error = DioException.badResponse(
      statusCode: 400,
      requestOptions: RequestOptions(),
      response: Response(
        requestOptions: RequestOptions(),
      ),
    );
    await tester.pumpWidget(
      TestComponentUtil.setApp(
        ErrorLogView(error, null),
        isLocalizations: true,
      ),
    );

    expect(find.byType(ErrorLogView), findsOneWidget);

    // タップしてダイヤログ を表示
    await tester.tap(find.byType(ErrorLogView));
    await tester.pumpAndSettle();

    // DioException なので TextButton は表示されない
    expect(find.byType(TextButton), findsNothing);
  });
}
