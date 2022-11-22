import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sputnik_test_task/pj_utils/pj_colors.dart';
import 'package:sputnik_test_task/pj_utils/pj_styles.dart';

class PjFormField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool isSearchField;
  final Function(String)? onChange;

  const PjFormField({
    Key? key,
    required this.labelText,
    required this.controller,
    this.isSearchField = false,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.w),
      child: TextFormField(
        controller: controller,
        style: isSearchField ? PjStyles.regular17 : PjStyles.medium36,
        cursorColor: PjColors.grey176,
        onChanged: onChange,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: isSearchField
              ? PjStyles.regular17
              : PjStyles.medium36.copyWith(fontSize: 15.sp),
          fillColor: PjColors.grey240,
          filled: true,
          border: InputBorder.none,
          suffixIcon: isSearchField
              ? SvgPicture.asset(
                  'assets/icons/filter.svg',
                  height: 12.w,
                  fit: BoxFit.scaleDown,
                )
              : null,
          contentPadding: EdgeInsets.symmetric(
            vertical: isSearchField ? 9.h : 16.h,
            horizontal: isSearchField ? 23.w : 15.w,
          ),
        ),
      ),
    );
  }
}
