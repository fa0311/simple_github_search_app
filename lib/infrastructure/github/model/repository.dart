import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_github_search_app/infrastructure/github/model/user.dart';

part 'repository.freezed.dart';
part 'repository.g.dart';

@freezed
class GithubRepository with _$GithubRepository {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubRepository({
    required int id,
    required String nodeId,
    required String name,
    required String fullName,
    required GithubUser? owner,
    required bool private,
    required String htmlUrl,
    required String? description,
    required bool fork,
    required String url,
    required String createdAt,
    required String updatedAt,
    required String pushedAt,
    required String? homepage,
    required int size,
    required int stargazersCount,
    required int watchersCount,
    required String? language,
    required int forksCount,
    required int openIssuesCount,
    required String? masterBranch,
    required String defaultBranch,
    required double? score,
    required String forksUrl,
    required String keysUrl,
    required String collaboratorsUrl,
    required String teamsUrl,
    required String hooksUrl,
    required String issueEventsUrl,
    required String eventsUrl,
    required String assigneesUrl,
    required String branchesUrl,
    required String tagsUrl,
    required String blobsUrl,
    required String gitTagsUrl,
    required String gitRefsUrl,
    required String treesUrl,
    required String statusesUrl,
    required String languagesUrl,
    required String stargazersUrl,
    required String contributorsUrl,
    required String subscribersUrl,
    required String subscriptionUrl,
    required String commitsUrl,
    required String gitCommitsUrl,
    required String commentsUrl,
    required String issueCommentUrl,
    required String contentsUrl,
    required String compareUrl,
    required String mergesUrl,
    required String archiveUrl,
    required String downloadsUrl,
    required String issuesUrl,
    required String pullsUrl,
    required String milestonesUrl,
    required String notificationsUrl,
    required String labelsUrl,
    required String releasesUrl,
    required String deploymentsUrl,
    required String gitUrl,
    required String sshUrl,
    required String cloneUrl,
    required String svnUrl,
    required int forks,
    required int openIssues,
    required int watchers,
    required List<String>? topics,
    required String? mirrorUrl,
    required bool hasIssues,
    required bool hasProjects,
    required bool hasPages,
    required bool hasWiki,
    required bool hasDownloads,
    required bool hasDiscussions,
    required bool archived,
    required bool disabled,
    required String visibility,
    required GithubLicense? license,
    required GithubPermissions? permissions,
    required GithubTextMatches? textMatches,
    required String? tempCloneToken,
    required bool? allowMergeCommit,
    required bool? allowSquashMerge,
    required bool? allowRebaseMerge,
    required bool? allowAutoMerge,
    required bool? deleteBranchOnMerge,
    required bool? allowForking,
    required bool? isTemplate,
    required bool? webCommitSignoffRequired,
  }) = _GithubRepository;

  factory GithubRepository.fromJson(Map<String, dynamic> json) => _$GithubRepositoryFromJson(json);
}

@freezed
class GithubLicense with _$GithubLicense {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubLicense({
    required String key,
    required String name,
    required String? url,
    required String? spdxId,
    required String nodeId,
    required String? htmlUrl,
  }) = _GithubLicense;

  factory GithubLicense.fromJson(Map<String, dynamic> json) => _$GithubLicenseFromJson(json);
}

@freezed
class GithubTextMatches with _$GithubTextMatches {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubTextMatches({
    required String objectUrl,
    required String? objectType,
    required String property,
    required String fragment,
    required List<GithubMatch>? matches,
  }) = _GithubTextMatches;

  factory GithubTextMatches.fromJson(Map<String, dynamic> json) => _$GithubTextMatchesFromJson(json);
}

@freezed
class GithubMatch with _$GithubMatch {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubMatch({
    required String text,
    required List<int> indices,
  }) = _GithubMatch;

  factory GithubMatch.fromJson(Map<String, dynamic> json) => _$GithubMatchFromJson(json);
}

@freezed
class GithubPermissions with _$GithubPermissions {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubPermissions({
    required bool admin,
    required bool maintain,
    required bool push,
    required bool triage,
    required bool pull,
  }) = _GithubPermissions;

  factory GithubPermissions.fromJson(Map<String, dynamic> json) => _$GithubPermissionsFromJson(json);
}
