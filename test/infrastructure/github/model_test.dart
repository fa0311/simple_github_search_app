import 'package:flutter_test/flutter_test.dart';
import 'package:simple_github_search_app/infrastructure/github/model/exception.dart';
import 'package:simple_github_search_app/infrastructure/github/model/param.dart';
import 'package:simple_github_search_app/infrastructure/github/model/repository.dart';
import 'package:simple_github_search_app/infrastructure/github/model/response.dart';
import 'package:simple_github_search_app/infrastructure/github/model/user.dart';

import '../../test_util/assets.dart';

void main() {
  test('GitHub API のモデルの検証', () async {
    final file = await TestUtilAssets.readJson('github/search_repositories.json');

    final items = file['items'] as List;
    final item = items.first as Map<String, dynamic>;

    final owner = item['owner'] as Map<String, dynamic>;
    final license = item['license'] as Map<String, dynamic>;

    const GitHubException(
      message: 'Not Found',
      errors: null,
      documentationUrl: '',
    ).copyWith()
      ..toJson()
      ..toString();

    // エラーが出なければOK
    expect(true, true);

    const GithubSearchRepositoriesParam(q: 'flutter').copyWith()
      ..toJson()
      ..toString();

    for (final element in SearchRepositoriesSortParam.values) {
      expect(element.name, isNotNull);
    }

    for (final element in SearchRepositoriesOrderParam.values) {
      expect(element.name, isNotNull);
    }

    // エラーが出なければOK
    expect(true, true);
    const GithubResponse(
      totalCount: 1,
      incompleteResults: false,
      items: [],
    ).copyWith()
      ..toJson((p1) => p1)
      ..toString();

    // エラーが出なければOK
    expect(true, true);

    GithubRepository.fromJson(item).copyWith()
      ..toJson()
      ..toString();

    // エラーが出なければOK
    expect(true, true);

    GithubUser.fromJson(owner).copyWith()
      ..toJson()
      ..toString();

    // エラーが出なければOK
    expect(true, true);

    GithubLicense.fromJson(license).copyWith()
      ..toJson()
      ..toString();

    // エラーが出なければOK
    expect(true, true);

    // GithubTextMatches.fromJson(textMatches.first).copyWith()
    //   ..toJson()
    //   ..toString();

    // エラーが出なければOK

    expect(true, true);

    // GithubMatch.fromJson(matches.first).copyWith()
    //   ..toJson()
    //   ..toString();

    // エラーが出なければOK

    expect(true, true);

    // GithubPermissions.fromJson(permissions).copyWith()
    //   ..toJson()
    //   ..toString();

    // エラーが出なければOK

    expect(true, true);

    GithubResponse<GithubRepository>.fromJson(
      file,
      (p1) => GithubRepository.fromJson(p1! as Map<String, dynamic>),
    ).copyWith()
      ..toJson((p1) => p1.toJson())
      ..toString();

    // エラーが出なければOK
    expect(true, true);
  });
}
