class UserModel {
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
  String? name;
  String? company;
  String? blog;
  String? location;
  dynamic email;
  dynamic hireable;
  String? bio;
  String? twitterUsername;
  int? publicRepos;
  int? publicGists;
  int? followers;
  int? following;
  String? createdAt;
  String? updatedAt;

  UserModel(
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
        this.siteAdmin,
        this.name,
        this.company,
        this.blog,
        this.location,
        this.email,
        this.hireable,
        this.bio,
        this.twitterUsername,
        this.publicRepos,
        this.publicGists,
        this.followers,
        this.following,
        this.createdAt,
        this.updatedAt});

  UserModel.fromJson(Map<String, dynamic> json) {
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
    name = json['name'];
    company = json['company'];
    blog = json['blog'];
    location = json['location'];
    email = json['email'];
    hireable = json['hireable'];
    bio = json['bio'];
    twitterUsername = json['twitter_username'];
    publicRepos = json['public_repos'];
    publicGists = json['public_gists'];
    followers = json['followers'];
    following = json['following'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
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
    json['name'] = name;
    json['company'] = company;
    json['blog'] = blog;
    json['location'] = location;
    json['email'] = email;
    json['hireable'] = hireable;
    json['bio'] = bio;
    json['twitter_username'] = twitterUsername;
    json['public_repos'] = publicRepos;
    json['public_gists'] = publicGists;
    json['followers'] = followers;
    json['following'] = following;
    json['created_at'] = createdAt;
    json['updated_at'] = updatedAt;
    return json;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
