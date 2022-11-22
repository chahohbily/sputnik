import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sputnik_test_task/models/followers_model.dart';
import 'package:sputnik_test_task/models/repositories_model.dart';
import 'package:sputnik_test_task/pj_utils/pj_colors.dart';
import 'package:sputnik_test_task/pj_utils/pj_styles.dart';
import 'package:sputnik_test_task/pj_utils/pj_text.dart';

class HorizontalListView extends StatelessWidget {
  final String title;
  final VoidCallback callback;
  final List<FollowersModel>? followers;
  final List<RepositoriesModel>? repositories;

  const HorizontalListView({
    Key? key,
    required this.title,
    required this.callback,
    this.followers,
    this.repositories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 271.w,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(height: 10.5.w),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Row(
              children: [
                PjText(
                  text: title,
                  style: PjStyles.bold34,
                  boxHeight: 51.w,
                  boxWidth: 239.w,
                ),
                const Spacer(),
                GestureDetector(
                  onTap: callback,
                  child: Text(
                    'View all',
                    style: PjStyles.regular15underline,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.5.w),
          SizedBox(
            height: followers == null ? 161.w : 167.w,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount:
                  followers == null ? repositories!.length : followers!.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (followers != null) ...[
                        CircleAvatar(
                          radius: 60.w,
                          backgroundImage:
                              NetworkImage(followers![index].avatarUrl!),
                        ),
                        SizedBox(height: 6.w),
                        PjText(
                          text: followers![index].login!,
                          style:
                              PjStyles.medium17.copyWith(color: PjColors.grey),
                          boxHeight: 26.w,
                        ),
                        PjText(
                          text: followers![index].id.toString(),
                          style: PjStyles.medium10,
                          boxHeight: 15.w,
                        ),
                      ],
                      if (repositories != null) ...[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 100.w,
                              width: 100.w,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.w),
                                child: Image.asset('assets/images/repos_image.png'),
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Container(
                              height: 25.w,
                              width: 49.w,
                              decoration: BoxDecoration(
                                color: PjColors.white229,
                                borderRadius: BorderRadius.circular(7.w),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('assets/icons/star.svg'),
                                  SizedBox(width: 2.w),
                                  Text(
                                    repositories![index]
                                        .stargazersCount
                                        .toString(),
                                    style: PjStyles.medium10.copyWith(color: PjColors.yellow),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20.w),
                        Row(
                          children: [
                            PjText(
                              text: repositories![index].name!,
                              style:
                              PjStyles.medium17.copyWith(color: PjColors.grey),
                              boxHeight: 26.w,
                              boxWidth: 114.w,
                            ),
                            Container(
                              height: 25.w,
                              width: 49.w,
                              decoration: BoxDecoration(
                                color: PjColors.grey,
                                borderRadius: BorderRadius.circular(7.w),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('assets/icons/branches.svg'),
                                  SizedBox(width: 10.w),
                                  Text(
                                    repositories![index].forksCount
                                        .toString(),
                                    style: PjStyles.medium10,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        PjText(
                          text: repositories![index].id.toString(),
                          style: PjStyles.medium10,
                          boxHeight: 15.w,
                        ),
                      ],
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 24.w),
        ],
      ),
    );
  }
}
