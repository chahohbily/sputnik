import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sputnik_test_task/models/user_model.dart';
import 'package:sputnik_test_task/pj_utils/pj_colors.dart';
import 'package:sputnik_test_task/pj_utils/pj_styles.dart';
import 'package:sputnik_test_task/pj_utils/pj_text.dart';
import 'package:sputnik_test_task/pj_widgets/pj_button.dart';

class ProfileScreen extends StatelessWidget {
  final UserModel user;

  const ProfileScreen({Key? key, required this.user}) : super(key: key);

  static const List<String> assets = [
    'assets/icons/lover.svg',
    'assets/icons/lover.svg',
    'assets/icons/medal.svg',
    'assets/icons/dollar.svg',
  ];
  static const List<String> buttonNames = [
    'My following',
    'My followers',
    'My badges',
    'My organizatios',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(height: 16.w),
              Row(
                children: [
                  Container(
                    height: 44.w,
                    width: 44.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.w),
                      color: PjColors.grey240,
                    ),
                    child: Center(
                      child: SvgPicture.asset('assets/icons/setting.svg'),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 44.w,
                    width: 44.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.w),
                      color: PjColors.grey240,
                    ),
                    child: Center(
                      child: SvgPicture.asset('assets/icons/notifications.svg'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.w),
              CircleAvatar(
                radius: 82.5.w,
                backgroundImage: NetworkImage(user.avatarUrl!),
                backgroundColor: PjColors.black,
              ),
              SizedBox(height: 10.w),
              PjText(
                text: user.name!,
                style: PjStyles.bold34,
                boxHeight: 51.w,
                boxWidth: 285.w,
                textAlign: TextAlign.center,
              ),
              Text(
                user.id!.toString(),
                style: PjStyles.medium17,
              ),
              SizedBox(height: 24.w),
              SizedBox(
                height: 304.w,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 18.w),
                      child: Container(
                        height: 58.w,
                        width: 343.w,
                        decoration: BoxDecoration(
                          color: PjColors.white,
                          borderRadius: BorderRadius.circular(14.w),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 30.w),
                            SvgPicture.asset(assets[index]),
                            SizedBox(width: 10.w),
                            Text(
                              buttonNames[index],
                              style: PjStyles.medium15,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 4.w),
              PjButton(text: 'View all', callback: () {}, buttonColor: PjColors.grey,),
              SizedBox(height: 17.w),
            ],
          ),
        ),
      ),
    );
  }
}
