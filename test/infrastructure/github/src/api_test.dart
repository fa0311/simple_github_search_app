import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/infrastructure/github/src/api.dart';

void main() {
  test('SearchRepositoriesSortParamのName', () {
    const name = SearchRepositoriesSortParam.helpWantedIssues;
    expect(name.name, 'help-wanted-issues');
  });
}
