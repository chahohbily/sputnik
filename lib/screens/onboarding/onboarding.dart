import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_storage/get_storage.dart';
import 'package:onboarding/onboarding.dart';
import 'package:sputnik_test_task/pj_utils/pj_colors.dart';
import 'package:sputnik_test_task/pj_utils/pj_styles.dart';
import 'package:sputnik_test_task/pj_utils/pj_text.dart';
import 'package:sputnik_test_task/pj_widgets/pj_button.dart';
import 'package:sputnik_test_task/screens/log_in/log_in.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    int index = 0;
    final onBoardingPagesList = [
      PageModel(
        widget: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 91.h),
                Expanded(
                  child: SizedBox(
                    width: 350.w,
                    child: Image.asset(
                      'assets/images/onboarding_first.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                Center(
                  child: PjText(
                      text: 'Фонд поддержки стартапов\n «Спутник»',
                      style: PjStyles.bold22,
                      boxHeight: 66.h,
                      textAlign: TextAlign.center),
                ),
                SizedBox(height: 22.h),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.h, left: 39.w),
              child: Image.asset(
                'assets/images/logo.png',
                height: 85.h,
              ),
            ),
          ],
        ),
      ),
      PageModel(
        widget: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 139.h),
                Expanded(
                  child: SizedBox(
                    width: 350.w,
                    child: Image.asset(
                      'assets/images/onboarding_second.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                Center(
                  child: PjText(
                      text:
                          'Мы помогаем \nсфокусироваться на \nглавном — \nпредпринимательстве',
                      style: PjStyles.bold22,
                      boxHeight: 127.h,
                      textAlign: TextAlign.center),
                ),
                SizedBox(height: 22.h),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.h, left: 39.w),
              child: Image.asset(
                'assets/images/logo.png',
                height: 85.h,
              ),
            ),
          ],
        ),
      ),
      PageModel(
        widget: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 143.h),
                Expanded(
                  child: SizedBox(
                    width: 350.w,
                    child: Image.asset(
                      'assets/images/onboarding_third.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                Center(
                  child: PjText(
                      text: 'Сделано ботаниками для \nботаников',
                      style: PjStyles.bold22,
                      boxHeight: 66.h,
                      textAlign: TextAlign.center),
                ),
                SizedBox(height: 22.h),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.h, left: 39.w),
              child: Image.asset(
                'assets/images/logo.png',
                height: 85.h,
              ),
            ),
          ],
        ),
      ),
    ];
    return Scaffold(
      backgroundColor: PjColors.whiteBackground,
      body: SafeArea(
        child: Onboarding(
          pages: onBoardingPagesList,
          onPageChange: (int pageIndex) {
            index = pageIndex;
          },
          startPageIndex: 0,
          footerBuilder: (context, dragDistance, pagesLength, setIndex) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (i) => Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        height: 30.h,
                        width: 30.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.h),
                          color: index == i ? PjColors.white : PjColors.grey64,
                        ),
                        child: Center(
                          child: Text(
                            (i + 1).toString(),
                            style: PjStyles.medium15.copyWith(
                              color: index == i ? PjColors.black : PjColors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 22.h),
                PjButton(
                  callback: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute(builder: (context) {
                        return const LoginScreen();
                      }),
                    );
                    GetStorage().write('isFirstEnter', true);
                  },
                  text: 'Next',
                ),
                SizedBox(height: 30.h),
              ],
            );
          },
        ),
      ),
    );
  }
}
