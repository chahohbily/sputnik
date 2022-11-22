import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:sputnik_test_task/models/followers_model.dart';
import 'package:sputnik_test_task/models/repositories_model.dart';
import 'package:sputnik_test_task/models/user_model.dart';

Future<UserModel?> getUserData(String username) async {
  UserModel? user;
  try{
    var response = await http.get(Uri.parse('https://api.github.com/users/$username'));
    user = UserModel.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
    log(user.id.toString());
  } on Exception{
    log('Error');
  }
  return user;
}

Future<List<FollowersModel>> getFollowers(String username, int followersCount) async {
  List<FollowersModel> followers = [];
  try{
    if (followersCount > 30){
      followersCount = 30;
    }
    var response = await http.get(Uri.parse('https://api.github.com/users/$username/followers'));
    for (int i = 0; i < followersCount; i++){
      List<dynamic> responseMap = jsonDecode(utf8.decode(response.bodyBytes));
      followers.add(FollowersModel.fromJson(responseMap[i]));
    }
  } on Exception{
    log('Error');
  }
  return followers;
}

Future<List<RepositoriesModel>> getRepositories(String username, int reposCount) async {
  List<RepositoriesModel> repositories = [];
  try{
    if (reposCount > 30){
      reposCount = 30;
    }
    var response = await http.get(Uri.parse('https://api.github.com/users/$username/repos'));
    for (int i = 0; i < reposCount; i++){
      List<dynamic> responseMap = jsonDecode(utf8.decode(response.bodyBytes));
      repositories.add(RepositoriesModel.fromJson(responseMap[i]));
    }
  } on Exception{
    log('Error');
  }
  return repositories;
}