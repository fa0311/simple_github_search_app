import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simple_github_search_app/infrastructure/github/model/user.dart';
import 'package:simple_github_search_app/provider/github/github.dart';
import 'package:simple_github_search_app/util/logger.dart';

part 'user.g.dart';

/// リクエストのキャッシュを担うProvider
@riverpod
Future<GithubUser> getGithubUserRaw(
  GetGithubUserRawRef ref,
  String userName,
) async {
  logger.d('send request: $userName');
  final client = ref.watch(getGithubAPIClientProvider);
  final response = await client.getUser(userName);
  return response;
}

/// リポジトリの情報を管理するProvider
@Riverpod(keepAlive: true)
class GithubUserState extends _$GithubUserState {
  @override
  GithubUser? build(String userName) {
    return null;
  }

  // ignore: use_setters_to_change_properties
  void change(GithubUser newState) {
    state = newState;
  }
}

/// 情報がなかったらリクエストを送るProvider
@riverpod
Future<GithubUser> getGithubUser(GetGithubUserRef ref, String userName) async {
  final userOrNull = ref.watch(githubUserStateProvider(userName));
  if (userOrNull == null) {
    final response = await ref.read(getGithubUserRawProvider(userName).future);
    ref.watch(githubUserStateProvider(userName).notifier).change(response);
    throw UnimplementedError();
  } else {
    return userOrNull;
  }
}

// 情報がない場合のためにゴーストを返すProvider
@riverpod
Future<GithubUser> getGithubGhost(GetGithubGhostRef ref) async {
  return const GithubUser(
    // cspell: disable
    name: null,
    email: null,
    login: 'ghost',
    id: 10137,
    nodeId: 'MDQ6VXNlcjEwMTM3',
    avatarUrl: 'https://avatars.githubusercontent.com/u/10137?v=4',
    gravatarId: '',
    url: 'https://api.github.com/users/ghost',
    htmlUrl: 'https://github.com/ghost',
    followersUrl: 'https://api.github.com/users/ghost/followers',
    followingUrl: 'https://api.github.com/users/ghost/following{/other_user}',
    gistsUrl: 'https://api.github.com/users/ghost/gists{/gist_id}',
    starredUrl: 'https://api.github.com/users/ghost/starred{/owner}{/repo}',
    subscriptionsUrl: 'https://api.github.com/users/ghost/subscriptions',
    organizationsUrl: 'https://api.github.com/users/ghost/orgs',
    reposUrl: 'https://api.github.com/users/ghost/repos',
    eventsUrl: 'https://api.github.com/users/ghost/events{/privacy}',
    receivedEventsUrl: 'https://api.github.com/users/ghost/received_events',
    type: 'User',
    siteAdmin: false,
    starredAt: null,
    // cspell: enable
  );
}
