import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class GithubUser with _$GithubUser {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubUser({
    required String? name,
    required String? email,
    required String login,
    required int id,
    required String nodeId,
    required String avatarUrl,
    required String? gravatarId,
    required String url,
    required String htmlUrl,
    required String followersUrl,
    required String followingUrl,
    required String gistsUrl,
    required String starredUrl,
    required String subscriptionsUrl,
    required String organizationsUrl,
    required String reposUrl,
    required String eventsUrl,
    required String receivedEventsUrl,
    required String type,
    required bool siteAdmin,
    required String? starredAt,
  }) = _GithubUser;

  factory GithubUser.fromJson(Map<String, dynamic> json) => _$GithubUserFromJson(json);
}
