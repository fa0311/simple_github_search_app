import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_github_search_app/app/search/page.dart';
import 'package:simple_github_search_app/component/part/circle_cached_network_image.dart';
import 'package:simple_github_search_app/component/part/custom_scroll_listener.dart';
import 'package:simple_github_search_app/infrastructure/github/model/param.dart';
import 'package:simple_github_search_app/provider/github/model/search.dart';
import 'package:simple_github_search_app/provider/github/search.dart';

import '../../test_util/component.dart';
import '../../test_util/github.dart';

class GithubSearchRepositoriesMock extends GithubSearchRepositories {
  @override
  Future<GithubItems<(String, String)>> fetch(int? page) async {
    final data = GitHubUtil.getSearchRepository();

    updateDependencies(data);

    return GithubItems(
      totalCount: data.totalCount,
      items: data.items.map((e) => (e.name, e.owner!.login)).toList(),
      incompleteResults: data.incompleteResults,
    );
  }
}

void main() {
  testWidgets('検索ページの初期状態', (WidgetTester tester) async {
    CircleCachedNetworkImage.enableHttpRequests = false;

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          githubSearchRepositoriesProvider('flutter', SearchRepositoriesSortParam.bestMatch).overrideWith(() {
            return GithubSearchRepositoriesMock();
          }),
        ],
        child: TestComponentUtil.setApp(
          const SearchPage(query: 'flutter'),
          isLocalizations: true,
        ),
      ),
    );
    expect(find.byType(SearchPage), findsOneWidget);

    // 表示されるまで待つ
    await tester.pump(const Duration(seconds: 1));

    // 検索バーがあるか
    expect(find.byType(TextField), findsOneWidget);

    // 下にスクロール
    await tester.drag(find.byType(CustomScrollListener), const Offset(0, -300));
  });
}
