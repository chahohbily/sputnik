class RepositoriesModel {
  int? id;
  String? nodeId;
  String? name;
  String? fullName;
  bool? private;
  OwnerModel? owner;
  String? htmlUrl;
  String? description;
  bool? fork;
  String? url;
  String? forksUrl;
  String? keysUrl;
  String? collaboratorsUrl;
  String? teamsUrl;
  String? hooksUrl;
  String? issueEventsUrl;
  String? eventsUrl;
  String? assigneesUrl;
  String? branchesUrl;
  String? tagsUrl;
  String? blobsUrl;
  String? gitTagsUrl;
  String? gitRefsUrl;
  String? treesUrl;
  String? statusesUrl;
  String? languagesUrl;
  String? stargazersUrl;
  String? contributorsUrl;
  String? subscribersUrl;
  String? subscriptionUrl;
  String? commitsUrl;
  String? gitCommitsUrl;
  String? commentsUrl;
  String? issueCommentUrl;
  String? contentsUrl;
  String? compareUrl;
  String? mergesUrl;
  String? archiveUrl;
  String? downloadsUrl;
  String? issuesUrl;
  String? pullsUrl;
  String? milestonesUrl;
  String? notificationsUrl;
  String? labelsUrl;
  String? releasesUrl;
  String? deploymentsUrl;
  String? createdAt;
  String? updatedAt;
  String? pushedAt;
  String? gitUrl;
  String? sshUrl;
  String? cloneUrl;
  String? svnUrl;
  dynamic homepage;
  int? size;
  int? stargazersCount;
  int? watchersCount;
  String? language;
  bool? hasIssues;
  bool? hasProjects;
  bool? hasDownloads;
  bool? hasWiki;
  bool? hasPages;
  bool? hasDiscussions;
  int? forksCount;
  dynamic mirrorUrl;
  bool? archived;
  bool? disabled;
  int? openIssuesCount;
  dynamic license;
  bool? allowForking;
  bool? isTemplate;
  bool? webCommitSignoffRequired;
  String? visibility;
  int? forks;
  int? openIssues;
  int? watchers;
  String? defaultBranch;

  RepositoriesModel(
      {this.id,
        this.nodeId,
        this.name,
        this.fullName,
        this.private,
        this.owner,
        this.htmlUrl,
        this.description,
        this.fork,
        this.url,
        this.forksUrl,
        this.keysUrl,
        this.collaboratorsUrl,
        this.teamsUrl,
        this.hooksUrl,
        this.issueEventsUrl,
        this.eventsUrl,
        this.assigneesUrl,
        this.branchesUrl,
        this.tagsUrl,
        this.blobsUrl,
        this.gitTagsUrl,
        this.gitRefsUrl,
        this.treesUrl,
        this.statusesUrl,
        this.languagesUrl,
        this.stargazersUrl,
        this.contributorsUrl,
        this.subscribersUrl,
        this.subscriptionUrl,
        this.commitsUrl,
        this.gitCommitsUrl,
        this.commentsUrl,
        this.issueCommentUrl,
        this.contentsUrl,
        this.compareUrl,
        this.mergesUrl,
        this.archiveUrl,
        this.downloadsUrl,
        this.issuesUrl,
        this.pullsUrl,
        this.milestonesUrl,
        this.notificationsUrl,
        this.labelsUrl,
        this.releasesUrl,
        this.deploymentsUrl,
        this.createdAt,
        this.updatedAt,
        this.pushedAt,
        this.gitUrl,
        this.sshUrl,
        this.cloneUrl,
        this.svnUrl,
        this.homepage,
        this.size,
        this.stargazersCount,
        this.watchersCount,
        this.language,
        this.hasIssues,
        this.hasProjects,
        this.hasDownloads,
        this.hasWiki,
        this.hasPages,
        this.hasDiscussions,
        this.forksCount,
        this.mirrorUrl,
        this.archived,
        this.disabled,
        this.openIssuesCount,
        this.license,
        this.allowForking,
        this.isTemplate,
        this.webCommitSignoffRequired,
        this.visibility,
        this.forks,
        this.openIssues,
        this.watchers,
        this.defaultBranch});

  RepositoriesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nodeId = json['node_id'];
    name = json['name'];
    fullName = json['full_name'];
    private = json['private'];
    owner = json['owner'] != null ? OwnerModel?.fromJson(json['owner']) : null;
    htmlUrl = json['html_url'];
    description = json['description'];
    fork = json['fork'];
    url = json['url'];
    forksUrl = json['forks_url'];
    keysUrl = json['keys_url'];
    collaboratorsUrl = json['collaborators_url'];
    teamsUrl = json['teams_url'];
    hooksUrl = json['hooks_url'];
    issueEventsUrl = json['issue_events_url'];
    eventsUrl = json['events_url'];
    assigneesUrl = json['assignees_url'];
    branchesUrl = json['branches_url'];
    tagsUrl = json['tags_url'];
    blobsUrl = json['blobs_url'];
    gitTagsUrl = json['git_tags_url'];
    gitRefsUrl = json['git_refs_url'];
    treesUrl = json['trees_url'];
    statusesUrl = json['statuses_url'];
    languagesUrl = json['languages_url'];
    stargazersUrl = json['stargazers_url'];
    contributorsUrl = json['contributors_url'];
    subscribersUrl = json['subscribers_url'];
    subscriptionUrl = json['subscription_url'];
    commitsUrl = json['commits_url'];
    gitCommitsUrl = json['git_commits_url'];
    commentsUrl = json['comments_url'];
    issueCommentUrl = json['issue_comment_url'];
    contentsUrl = json['contents_url'];
    compareUrl = json['compare_url'];
    mergesUrl = json['merges_url'];
    archiveUrl = json['archive_url'];
    downloadsUrl = json['downloads_url'];
    issuesUrl = json['issues_url'];
    pullsUrl = json['pulls_url'];
    milestonesUrl = json['milestones_url'];
    notificationsUrl = json['notifications_url'];
    labelsUrl = json['labels_url'];
    releasesUrl = json['releases_url'];
    deploymentsUrl = json['deployments_url'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pushedAt = json['pushed_at'];
    gitUrl = json['git_url'];
    sshUrl = json['ssh_url'];
    cloneUrl = json['clone_url'];
    svnUrl = json['svn_url'];
    homepage = json['homepage'];
    size = json['size'];
    stargazersCount = json['stargazers_count'];
    watchersCount = json['watchers_count'];
    language = json['language'];
    hasIssues = json['has_issues'];
    hasProjects = json['has_projects'];
    hasDownloads = json['has_downloads'];
    hasWiki = json['has_wiki'];
    hasPages = json['has_pages'];
    hasDiscussions = json['has_discussions'];
    forksCount = json['forks_count'];
    mirrorUrl = json['mirror_url'];
    archived = json['archived'];
    disabled = json['disabled'];
    openIssuesCount = json['open_issues_count'];
    license = json['license'];
    allowForking = json['allow_forking'];
    isTemplate = json['is_template'];
    webCommitSignoffRequired = json['web_commit_signoff_required'];
    visibility = json['visibility'];
    forks = json['forks'];
    openIssues = json['open_issues'];
    watchers = json['watchers'];
    defaultBranch = json['default_branch'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    json['id'] = id;
    json['node_id'] = nodeId;
    json['name'] = name;
    json['full_name'] = fullName;
    json['private'] = private;
    if (owner != null) {
      json['owner'] = owner!.toJson();
    }
    json['html_url'] = htmlUrl;
    json['description'] = description;
    json['fork'] = fork;
    json['url'] = url;
    json['forks_url'] = forksUrl;
    json['keys_url'] = keysUrl;
    json['collaborators_url'] = collaboratorsUrl;
    json['teams_url'] = teamsUrl;
    json['hooks_url'] = hooksUrl;
    json['issue_events_url'] = issueEventsUrl;
    json['events_url'] = eventsUrl;
    json['assignees_url'] = assigneesUrl;
    json['branches_url'] = branchesUrl;
    json['tags_url'] = tagsUrl;
    json['blobs_url'] = blobsUrl;
    json['git_tags_url'] = gitTagsUrl;
    json['git_refs_url'] = gitRefsUrl;
    json['trees_url'] = treesUrl;
    json['statuses_url'] = statusesUrl;
    json['languages_url'] = languagesUrl;
    json['stargazers_url'] = stargazersUrl;
    json['contributors_url'] = contributorsUrl;
    json['subscribers_url'] = subscribersUrl;
    json['subscription_url'] = subscriptionUrl;
    json['commits_url'] = commitsUrl;
    json['git_commits_url'] = gitCommitsUrl;
    json['comments_url'] = commentsUrl;
    json['issue_comment_url'] = issueCommentUrl;
    json['contents_url'] = contentsUrl;
    json['compare_url'] = compareUrl;
    json['merges_url'] = mergesUrl;
    json['archive_url'] = archiveUrl;
    json['downloads_url'] = downloadsUrl;
    json['issues_url'] = issuesUrl;
    json['pulls_url'] = pullsUrl;
    json['milestones_url'] = milestonesUrl;
    json['notifications_url'] = notificationsUrl;
    json['labels_url'] = labelsUrl;
    json['releases_url'] = releasesUrl;
    json['deployments_url'] = deploymentsUrl;
    json['created_at'] = createdAt;
    json['updated_at'] = updatedAt;
    json['pushed_at'] = pushedAt;
    json['git_url'] = gitUrl;
    json['ssh_url'] = sshUrl;
    json['clone_url'] = cloneUrl;
    json['svn_url'] = svnUrl;
    json['homepage'] = homepage;
    json['size'] = size;
    json['stargazers_count'] = stargazersCount;
    json['watchers_count'] = watchersCount;
    json['language'] = language;
    json['has_issues'] = hasIssues;
    json['has_projects'] = hasProjects;
    json['has_downloads'] = hasDownloads;
    json['has_wiki'] = hasWiki;
    json['has_pages'] = hasPages;
    json['has_discussions'] = hasDiscussions;
    json['forks_count'] = forksCount;
    json['mirror_url'] = mirrorUrl;
    json['archived'] = archived;
    json['disabled'] = disabled;
    json['open_issues_count'] = openIssuesCount;
    json['license'] = license;
    json['allow_forking'] = allowForking;
    json['is_template'] = isTemplate;
    json['web_commit_signoff_required'] = webCommitSignoffRequired;
    json['visibility'] = visibility;
    json['forks'] = forks;
    json['open_issues'] = openIssues;
    json['watchers'] = watchers;
    json['default_branch'] = defaultBranch;
    return json;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
class OwnerModel {
  String? login;
  int? id;
  String? nodeId;
  String? avatarUrl;
  String? gravatarId;
  String? url;
  String? htmlUrl;
  String? followersUrl;
  String? followingUrl;
  String? gistsUrl;
  String? starredUrl;
  String? subscriptionsUrl;
  String? organizationsUrl;
  String? reposUrl;
  String? eventsUrl;
  String? receivedEventsUrl;
  String? type;
  bool? siteAdmin;

  OwnerModel(
      {this.login,
        this.id,
        this.nodeId,
        this.avatarUrl,
        this.gravatarId,
        this.url,
        this.htmlUrl,
        this.followersUrl,
        this.followingUrl,
        this.gistsUrl,
        this.starredUrl,
        this.subscriptionsUrl,
        this.organizationsUrl,
        this.reposUrl,
        this.eventsUrl,
        this.receivedEventsUrl,
        this.type,
        this.siteAdmin});

  OwnerModel.fromJson(Map<String, dynamic> json) {
    login = json['login'];
    id = json['id'];
    nodeId = json['node_id'];
    avatarUrl = json['avatar_url'];
    gravatarId = json['gravatar_id'];
    url = json['url'];
    htmlUrl = json['html_url'];
    followersUrl = json['followers_url'];
    followingUrl = json['following_url'];
    gistsUrl = json['gists_url'];
    starredUrl = json['starred_url'];
    subscriptionsUrl = json['subscriptions_url'];
    organizationsUrl = json['organizations_url'];
    reposUrl = json['repos_url'];
    eventsUrl = json['events_url'];
    receivedEventsUrl = json['received_events_url'];
    type = json['type'];
    siteAdmin = json['site_admin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    json['login'] = login;
    json['id'] = id;
    json['node_id'] = nodeId;
    json['avatar_url'] = avatarUrl;
    json['gravatar_id'] = gravatarId;
    json['url'] = url;
    json['html_url'] = htmlUrl;
    json['followers_url'] = followersUrl;
    json['following_url'] = followingUrl;
    json['gists_url'] = gistsUrl;
    json['starred_url'] = starredUrl;
    json['subscriptions_url'] = subscriptionsUrl;
    json['organizations_url'] = organizationsUrl;
    json['repos_url'] = reposUrl;
    json['events_url'] = eventsUrl;
    json['received_events_url'] = receivedEventsUrl;
    json['type'] = type;
    json['site_admin'] = siteAdmin;
    return json;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
