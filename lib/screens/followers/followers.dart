import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sputnik_test_task/models/followers_model.dart';
import 'package:sputnik_test_task/pj_utils/pj_colors.dart';
import 'package:sputnik_test_task/pj_utils/pj_styles.dart';
import 'package:sputnik_test_task/pj_utils/pj_text.dart';
import 'package:sputnik_test_task/pj_widgets/pj_formfield.dart';

class FollowersScreen extends StatelessWidget {
  final List<FollowersModel> followers;

  FollowersScreen({
    Key? key,
    required this.followers,
  }) : super(key: key);
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 32.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.h),
                child: PjText(
                  text: 'Followers',
                  style: PjStyles.bold34,
                  boxHeight: 34.h,
                  boxWidth: 166.w,
                ),
              ),
              SizedBox(height: 21.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: PjFormField(
                  labelText: 'Search...',
                  controller: _searchController,
                  isSearchField: true,
                ),
              ),
              SizedBox(height: 28.h),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 375.w,
                      height: 98.w,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: PjColors.grey240),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            SizedBox(width: 20.w),
                            CircleAvatar(
                              radius: 29.r,
                              backgroundImage:
                                  NetworkImage(followers[index].avatarUrl!),
                            ),
                            SizedBox(width: 12.w),
                            Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    followers[index].login!,
                                    style: PjStyles.bold22,
                                  ),
                                  SizedBox(height: 5.w),
                                  Text(
                                    followers[index].id.toString(),
                                    style: PjStyles.medium17
                                        .copyWith(color: PjColors.grey64),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            if (followers[index].siteAdmin!) Container(
                              height: 10.w,
                              width: 10.w,
                              decoration: BoxDecoration(
                                color: PjColors.deepOrange,
                                borderRadius: BorderRadius.circular(5.w),
                              ),
                            ),
                            SizedBox(width: 20.w),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
