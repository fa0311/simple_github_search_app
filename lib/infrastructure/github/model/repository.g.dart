// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GithubRepositoryImpl _$$GithubRepositoryImplFromJson(
        Map<String, dynamic> json) =>
    _$GithubRepositoryImpl(
      id: json['id'] as int,
      nodeId: json['node_id'] as String,
      name: json['name'] as String,
      fullName: json['full_name'] as String,
      owner: json['owner'] == null
          ? null
          : GithubUser.fromJson(json['owner'] as Map<String, dynamic>),
      private: json['private'] as bool,
      htmlUrl: json['html_url'] as String,
      description: json['description'] as String?,
      fork: json['fork'] as bool,
      url: json['url'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      pushedAt: json['pushed_at'] as String,
      homepage: json['homepage'] as String?,
      size: json['size'] as int,
      stargazersCount: json['stargazers_count'] as int,
      watchersCount: json['watchers_count'] as int,
      language: json['language'] as String?,
      forksCount: json['forks_count'] as int,
      openIssuesCount: json['open_issues_count'] as int,
      masterBranch: json['master_branch'] as String?,
      defaultBranch: json['default_branch'] as String,
      score: (json['score'] as num?)?.toDouble(),
      forksUrl: json['forks_url'] as String,
      keysUrl: json['keys_url'] as String,
      collaboratorsUrl: json['collaborators_url'] as String,
      teamsUrl: json['teams_url'] as String,
      hooksUrl: json['hooks_url'] as String,
      issueEventsUrl: json['issue_events_url'] as String,
      eventsUrl: json['events_url'] as String,
      assigneesUrl: json['assignees_url'] as String,
      branchesUrl: json['branches_url'] as String,
      tagsUrl: json['tags_url'] as String,
      blobsUrl: json['blobs_url'] as String,
      gitTagsUrl: json['git_tags_url'] as String,
      gitRefsUrl: json['git_refs_url'] as String,
      treesUrl: json['trees_url'] as String,
      statusesUrl: json['statuses_url'] as String,
      languagesUrl: json['languages_url'] as String,
      stargazersUrl: json['stargazers_url'] as String,
      contributorsUrl: json['contributors_url'] as String,
      subscribersUrl: json['subscribers_url'] as String,
      subscriptionUrl: json['subscription_url'] as String,
      commitsUrl: json['commits_url'] as String,
      gitCommitsUrl: json['git_commits_url'] as String,
      commentsUrl: json['comments_url'] as String,
      issueCommentUrl: json['issue_comment_url'] as String,
      contentsUrl: json['contents_url'] as String,
      compareUrl: json['compare_url'] as String,
      mergesUrl: json['merges_url'] as String,
      archiveUrl: json['archive_url'] as String,
      downloadsUrl: json['downloads_url'] as String,
      issuesUrl: json['issues_url'] as String,
      pullsUrl: json['pulls_url'] as String,
      milestonesUrl: json['milestones_url'] as String,
      notificationsUrl: json['notifications_url'] as String,
      labelsUrl: json['labels_url'] as String,
      releasesUrl: json['releases_url'] as String,
      deploymentsUrl: json['deployments_url'] as String,
      gitUrl: json['git_url'] as String,
      sshUrl: json['ssh_url'] as String,
      cloneUrl: json['clone_url'] as String,
      svnUrl: json['svn_url'] as String,
      forks: json['forks'] as int,
      openIssues: json['open_issues'] as int,
      watchers: json['watchers'] as int,
      topics:
          (json['topics'] as List<dynamic>?)?.map((e) => e as String).toList(),
      mirrorUrl: json['mirror_url'] as String?,
      hasIssues: json['has_issues'] as bool,
      hasProjects: json['has_projects'] as bool,
      hasPages: json['has_pages'] as bool,
      hasWiki: json['has_wiki'] as bool,
      hasDownloads: json['has_downloads'] as bool,
      hasDiscussions: json['has_discussions'] as bool,
      archived: json['archived'] as bool,
      disabled: json['disabled'] as bool,
      visibility: json['visibility'] as String,
      license: json['license'] == null
          ? null
          : GithubLicense.fromJson(json['license'] as Map<String, dynamic>),
      permissions: json['permissions'] == null
          ? null
          : GithubPermissions.fromJson(
              json['permissions'] as Map<String, dynamic>),
      textMatches: json['text_matches'] == null
          ? null
          : GithubTextMatches.fromJson(
              json['text_matches'] as Map<String, dynamic>),
      tempCloneToken: json['temp_clone_token'] as String?,
      allowMergeCommit: json['allow_merge_commit'] as bool?,
      allowSquashMerge: json['allow_squash_merge'] as bool?,
      allowRebaseMerge: json['allow_rebase_merge'] as bool?,
      allowAutoMerge: json['allow_auto_merge'] as bool?,
      deleteBranchOnMerge: json['delete_branch_on_merge'] as bool?,
      allowForking: json['allow_forking'] as bool?,
      isTemplate: json['is_template'] as bool?,
      webCommitSignoffRequired: json['web_commit_signoff_required'] as bool?,
    );

Map<String, dynamic> _$$GithubRepositoryImplToJson(
        _$GithubRepositoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'name': instance.name,
      'full_name': instance.fullName,
      'owner': instance.owner,
      'private': instance.private,
      'html_url': instance.htmlUrl,
      'description': instance.description,
      'fork': instance.fork,
      'url': instance.url,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'pushed_at': instance.pushedAt,
      'homepage': instance.homepage,
      'size': instance.size,
      'stargazers_count': instance.stargazersCount,
      'watchers_count': instance.watchersCount,
      'language': instance.language,
      'forks_count': instance.forksCount,
      'open_issues_count': instance.openIssuesCount,
      'master_branch': instance.masterBranch,
      'default_branch': instance.defaultBranch,
      'score': instance.score,
      'forks_url': instance.forksUrl,
      'keys_url': instance.keysUrl,
      'collaborators_url': instance.collaboratorsUrl,
      'teams_url': instance.teamsUrl,
      'hooks_url': instance.hooksUrl,
      'issue_events_url': instance.issueEventsUrl,
      'events_url': instance.eventsUrl,
      'assignees_url': instance.assigneesUrl,
      'branches_url': instance.branchesUrl,
      'tags_url': instance.tagsUrl,
      'blobs_url': instance.blobsUrl,
      'git_tags_url': instance.gitTagsUrl,
      'git_refs_url': instance.gitRefsUrl,
      'trees_url': instance.treesUrl,
      'statuses_url': instance.statusesUrl,
      'languages_url': instance.languagesUrl,
      'stargazers_url': instance.stargazersUrl,
      'contributors_url': instance.contributorsUrl,
      'subscribers_url': instance.subscribersUrl,
      'subscription_url': instance.subscriptionUrl,
      'commits_url': instance.commitsUrl,
      'git_commits_url': instance.gitCommitsUrl,
      'comments_url': instance.commentsUrl,
      'issue_comment_url': instance.issueCommentUrl,
      'contents_url': instance.contentsUrl,
      'compare_url': instance.compareUrl,
      'merges_url': instance.mergesUrl,
      'archive_url': instance.archiveUrl,
      'downloads_url': instance.downloadsUrl,
      'issues_url': instance.issuesUrl,
      'pulls_url': instance.pullsUrl,
      'milestones_url': instance.milestonesUrl,
      'notifications_url': instance.notificationsUrl,
      'labels_url': instance.labelsUrl,
      'releases_url': instance.releasesUrl,
      'deployments_url': instance.deploymentsUrl,
      'git_url': instance.gitUrl,
      'ssh_url': instance.sshUrl,
      'clone_url': instance.cloneUrl,
      'svn_url': instance.svnUrl,
      'forks': instance.forks,
      'open_issues': instance.openIssues,
      'watchers': instance.watchers,
      'topics': instance.topics,
      'mirror_url': instance.mirrorUrl,
      'has_issues': instance.hasIssues,
      'has_projects': instance.hasProjects,
      'has_pages': instance.hasPages,
      'has_wiki': instance.hasWiki,
      'has_downloads': instance.hasDownloads,
      'has_discussions': instance.hasDiscussions,
      'archived': instance.archived,
      'disabled': instance.disabled,
      'visibility': instance.visibility,
      'license': instance.license,
      'permissions': instance.permissions,
      'text_matches': instance.textMatches,
      'temp_clone_token': instance.tempCloneToken,
      'allow_merge_commit': instance.allowMergeCommit,
      'allow_squash_merge': instance.allowSquashMerge,
      'allow_rebase_merge': instance.allowRebaseMerge,
      'allow_auto_merge': instance.allowAutoMerge,
      'delete_branch_on_merge': instance.deleteBranchOnMerge,
      'allow_forking': instance.allowForking,
      'is_template': instance.isTemplate,
      'web_commit_signoff_required': instance.webCommitSignoffRequired,
    };

_$GithubLicenseImpl _$$GithubLicenseImplFromJson(Map<String, dynamic> json) =>
    _$GithubLicenseImpl(
      key: json['key'] as String,
      name: json['name'] as String,
      url: json['url'] as String?,
      spdxId: json['spdx_id'] as String?,
      nodeId: json['node_id'] as String,
      htmlUrl: json['html_url'] as String?,
    );

Map<String, dynamic> _$$GithubLicenseImplToJson(_$GithubLicenseImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'url': instance.url,
      'spdx_id': instance.spdxId,
      'node_id': instance.nodeId,
      'html_url': instance.htmlUrl,
    };

_$GithubTextMatchesImpl _$$GithubTextMatchesImplFromJson(
        Map<String, dynamic> json) =>
    _$GithubTextMatchesImpl(
      objectUrl: json['object_url'] as String,
      objectType: json['object_type'] as String?,
      property: json['property'] as String,
      fragment: json['fragment'] as String,
      matches: (json['matches'] as List<dynamic>?)
          ?.map((e) => GithubMatch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GithubTextMatchesImplToJson(
        _$GithubTextMatchesImpl instance) =>
    <String, dynamic>{
      'object_url': instance.objectUrl,
      'object_type': instance.objectType,
      'property': instance.property,
      'fragment': instance.fragment,
      'matches': instance.matches,
    };

_$GithubMatchImpl _$$GithubMatchImplFromJson(Map<String, dynamic> json) =>
    _$GithubMatchImpl(
      text: json['text'] as String,
      indices: (json['indices'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$GithubMatchImplToJson(_$GithubMatchImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'indices': instance.indices,
    };

_$GithubPermissionsImpl _$$GithubPermissionsImplFromJson(
        Map<String, dynamic> json) =>
    _$GithubPermissionsImpl(
      admin: json['admin'] as bool,
      maintain: json['maintain'] as bool,
      push: json['push'] as bool,
      triage: json['triage'] as bool,
      pull: json['pull'] as bool,
    );

Map<String, dynamic> _$$GithubPermissionsImplToJson(
        _$GithubPermissionsImpl instance) =>
    <String, dynamic>{
      'admin': instance.admin,
      'maintain': instance.maintain,
      'push': instance.push,
      'triage': instance.triage,
      'pull': instance.pull,
    };
