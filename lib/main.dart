import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sputnik_test_task/pj_utils/pj_colors.dart';
import 'package:sputnik_test_task/screens/log_in/log_in.dart';
import 'package:sputnik_test_task/screens/onboarding/onboarding.dart';

void main() async {
  await GetStorage.init();
  GetStorage().write('isFirstEnter', false);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            backgroundColor: PjColors.whiteBackground
          ),
          home: child,
        );
      },
      child: GetStorage().read('isFirstEnter') == true ? const LoginScreen() : const OnBoarding(),
      //child: MainScreen(),
    );
  }
}