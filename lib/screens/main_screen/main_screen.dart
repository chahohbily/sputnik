import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sputnik_test_task/models/followers_model.dart';
import 'package:sputnik_test_task/models/repositories_model.dart';
import 'package:sputnik_test_task/models/user_model.dart';
import 'package:sputnik_test_task/pj_utils/pj_colors.dart';
import 'package:sputnik_test_task/pj_utils/pj_styles.dart';
import 'package:sputnik_test_task/screens/followers/followers.dart';
import 'package:sputnik_test_task/screens/home/home.dart';
import 'package:sputnik_test_task/screens/profile/profile.dart';

class MainScreen extends StatefulWidget {
  final UserModel user;
  final List<FollowersModel> followers;
  final List<RepositoriesModel> repositories;

  const MainScreen({
    Key? key,
    required this.user,
    required this.repositories,
    required this.followers,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int bottomNavBarIndex = 0;
  late List<Widget> screens;

  @override
  void initState() {
    screens = [
      HomeScreen(
        user: widget.user,
        followers: widget.followers,
        repositories: widget.repositories,
        callback: () {
          setState(() {
            bottomNavBarIndex = 1;
          });
        },
      ),
      FollowersScreen(followers: widget.followers,),
      Container(),
      ProfileScreen(
        user: widget.user,
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          screens[bottomNavBarIndex],
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 86.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      setState(() {
                        bottomNavBarIndex = 0;
                      });
                    },
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/icons/home.svg',
                            color: bottomNavBarIndex == 0
                                ? PjColors.grey
                                : PjColors.grey176),
                        SizedBox(height: 2.w),
                        Text(
                          'Home',
                          style: PjStyles.bold10.copyWith(
                              color: bottomNavBarIndex == 0
                                  ? PjColors.grey
                                  : PjColors.grey176),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      setState(() {
                        bottomNavBarIndex = 1;
                      });
                    },
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/icons/followers.svg',
                            color: bottomNavBarIndex == 1
                                ? PjColors.grey
                                : PjColors.grey176),
                        SizedBox(height: 2.w),
                        Text(
                          'Followers',
                          style: PjStyles.bold10.copyWith(
                              color: bottomNavBarIndex == 1
                                  ? PjColors.grey
                                  : PjColors.grey176),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      setState(() {
                        bottomNavBarIndex = 2;
                      });
                    },
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/icons/chat.svg',
                            color: bottomNavBarIndex == 2
                                ? PjColors.grey
                                : PjColors.grey176),
                        SizedBox(height: 2.w),
                        Text(
                          'Chat',
                          style: PjStyles.bold10.copyWith(
                              color: bottomNavBarIndex == 2
                                  ? PjColors.grey
                                  : PjColors.grey176),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      setState(() {
                        bottomNavBarIndex = 3;
                      });
                    },
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/icons/profile.svg',
                            color: bottomNavBarIndex == 3
                                ? PjColors.grey
                                : PjColors.grey176),
                        SizedBox(height: 2.w),
                        Text(
                          'Profile',
                          style: PjStyles.bold10.copyWith(
                              color: bottomNavBarIndex == 3
                                  ? PjColors.grey
                                  : PjColors.grey176),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

enum Actions {
  Loaded,
  Error,
  Loading,
}
