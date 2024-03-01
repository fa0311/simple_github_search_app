import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simple_github_search_app/infrastructure/github/model/user.dart';

part 'user.g.dart';

/// リポジトリの情報を管理するProvider
@riverpod
class GithubUserOrNull extends _$GithubUserOrNull {
  @override
  FutureOr<GithubUser?> build(String userName) async {
    return null;
  }

  Future<void> fetch() async {
    state = await AsyncValue.guard(() async {
      // `TODO`: userName からユーザー情報を取得する
      throw UnimplementedError();
    });
  }
}

/// 情報がなかったらリクエストを送るProvider
@riverpod
Future<GithubUser> getGithubUser(GetGithubUserRef ref, String userName) async {
  final userOrNull = await ref.watch(githubUserOrNullProvider(userName).future);
  if (userOrNull == null) {
    await ref.watch(githubUserOrNullProvider(userName).notifier).fetch();
    final user = await ref.watch(githubUserOrNullProvider(userName).future);
    return user!;
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
