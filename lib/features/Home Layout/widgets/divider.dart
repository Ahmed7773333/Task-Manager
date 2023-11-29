import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management/core/utils/app_colors.dart';

Widget divider() {
  return Container(
    width: 111.w,
    decoration: ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1.w,
          strokeAlign: BorderSide.strokeAlignCenter,
          color: AppColors.onPrimary,
        ),
      ),
    ),
  );
}
