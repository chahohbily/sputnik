import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sputnik_test_task/pj_utils/pj_colors.dart';
import 'package:sputnik_test_task/pj_utils/pj_gradient.dart';
import 'package:sputnik_test_task/pj_utils/pj_styles.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class PjButton extends StatelessWidget {
  final String text;
  final VoidCallback callback;
  final bool isActive;
  final Color? buttonColor;

  const PjButton({
    Key? key,
    required this.text,
    required this.callback,
    this.isActive = true,
    this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ZoomTapAnimation(
      onTap: isActive ? callback : null,
      child: Container(
        width: 332.w,
        height: 58.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.w),
          gradient: isActive && buttonColor == null ? PjGradient.orange : null,
          color: isActive ? buttonColor : PjColors.grey226,
        ),
        child: Center(
          child: Text(
            text,
            style: PjStyles.bold17,
          ),
        ),
      ),
    );
  }
}
