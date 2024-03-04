import 'package:simple_github_search_app/infrastructure/github/model/repository.dart';
import 'package:simple_github_search_app/infrastructure/github/model/response.dart';
import 'package:simple_github_search_app/infrastructure/github/model/user.dart';

import 'assets.dart';

class GitHubUtil {
  GitHubUtil._();

  static GithubResponse<GithubRepository> getSearchRepository() {
    final file = TestUtilAssets.readJson('github/repository.json');
    final data = GithubRepository.fromJson(file);

    return GithubResponse(
      totalCount: 1,
      incompleteResults: false,
      items: List.generate(30, (_) => data.copyWith()),
    );
  }

  static GithubRepository getRepository() {
    final file = TestUtilAssets.readJson('github/repository.json');
    return GithubRepository.fromJson(file);
  }

  static GithubUser getUser() {
    final file = TestUtilAssets.readJson('github/user.json');
    return GithubUser.fromJson(file);
  }
}
