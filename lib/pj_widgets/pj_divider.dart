import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sputnik_test_task/pj_utils/pj_colors.dart';

class PjDivider extends StatelessWidget {
  const PjDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 1.w,
        width: 343.w,
        color: PjColors.grey240,
      ),
    );
  }
}
