import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sputnik_test_task/models/followers_model.dart';
import 'package:sputnik_test_task/models/repositories_model.dart';
import 'package:sputnik_test_task/models/user_model.dart';
import 'package:sputnik_test_task/pj_utils/pj_colors.dart';
import 'package:sputnik_test_task/pj_utils/pj_gradient.dart';
import 'package:sputnik_test_task/pj_utils/pj_styles.dart';
import 'package:sputnik_test_task/pj_utils/pj_text.dart';
import 'package:sputnik_test_task/pj_widgets/pj_divider.dart';
import 'package:sputnik_test_task/pj_widgets/pj_horizontal_list.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomeScreen extends StatelessWidget {
  final UserModel user;
  final List<FollowersModel> followers;
  final List<RepositoriesModel> repositories;
  final VoidCallback callback;

  const HomeScreen({
    Key? key,
    required this.user,
    required this.repositories,
    required this.followers,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.w),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  PjText(
                    text: user.name!,
                    style: PjStyles.bold34,
                    boxHeight: 51.w,
                    boxWidth: 213.w,
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(top: 9.w),
                    child: ZoomTapAnimation(
                      child: Container(
                        width: 116.w,
                        height: 42.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.w),
                          gradient: PjGradient.orange,
                        ),
                        child: Center(
                          child: Text(
                            'Follow on github',
                            style: PjStyles.bold17.copyWith(fontSize: 10.sp),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: PjText(
                text: 'Company - ${user.company ?? 'No information'}',
                style: PjStyles.medium17,
                boxHeight: 30.w,
                boxWidth: 219.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: PjText(
                text: 'Email - ${user.email}',
                style: PjStyles.medium17,
                boxHeight: 30.w,
                boxWidth: 335.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: PjText(
                text: 'Bio - ${user.bio ?? 'No information'}',
                style: PjStyles.medium17,
                boxHeight: 30.w,
                boxWidth: 344.w,
              ),
            ),
            SizedBox(height: 17.w),
            const PjDivider(),
            HorizontalListView(
              title: 'Following you',
              callback: callback,
              followers: followers,
            ),
            Divider(
              color: PjColors.grey240,
              height: 1,
            ),
            const PjDivider(),
            HorizontalListView(
              title: 'Repositories',
              callback: () {},
              repositories: repositories,
            ),
          ],
        ),
      ),
    );
  }
}
