import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simple_github_search_app/infrastructure/github/model/user.dart';
import 'package:simple_github_search_app/provider/github/github.dart';

part 'user.g.dart';

/// リクエストのキャッシュを担うProvider
@riverpod
Future<GithubUser> getGithubUserRaw(
  GetGithubUserRawRef ref,
  String userName,
) async {
  final client = ref.watch(getGithubAPIClientProvider);
  final response = await client.getUser(userName);
  return response;
}

/// [GithubUser] の情報を管理するProvider
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

  Future<void> reload() async {
    state = await ref.refresh(getGithubUserRawProvider(userName).future);
  }

  Future<GithubUser> get() async {
    state ??= await ref.refresh(getGithubUserRawProvider(userName).future);
    return state!;
  }
}

/// [GithubUserState] の [GithubUserState.get] を呼び出すProvider
@riverpod
Future<GithubUser> getGithubUser(GetGithubUserRef ref, String userName) async {
  return ref.watch(githubUserStateProvider(userName).notifier).get();
}

// 情報がない場合のためにゴーストを返すProvider
// @riverpod
// Future<GithubUser> getGithubGhost(GetGithubGhostRef ref) async {
//   return const GithubUser(
//     // cspell: disable
//     name: null,
//     email: null,
//     login: 'ghost',
//     id: 10137,
//     nodeId: 'MDQ6VXNlcjEwMTM3',
//     avatarUrl: 'https://avatars.githubusercontent.com/u/10137?v=4',
//     gravatarId: '',
//     url: 'https://api.github.com/users/ghost',
//     htmlUrl: 'https://github.com/ghost',
//     followersUrl: 'https://api.github.com/users/ghost/followers',
//     followingUrl: 'https://api.github.com/users/ghost/following{/other_user}',
//     gistsUrl: 'https://api.github.com/users/ghost/gists{/gist_id}',
//     starredUrl: 'https://api.github.com/users/ghost/starred{/owner}{/repo}',
//     subscriptionsUrl: 'https://api.github.com/users/ghost/subscriptions',
//     organizationsUrl: 'https://api.github.com/users/ghost/orgs',
//     reposUrl: 'https://api.github.com/users/ghost/repos',
//     eventsUrl: 'https://api.github.com/users/ghost/events{/privacy}',
//     receivedEventsUrl: 'https://api.github.com/users/ghost/received_events',
//     type: 'User',
//     siteAdmin: false,
//     starredAt: null,
//     // cspell: enable
//   );
// }
