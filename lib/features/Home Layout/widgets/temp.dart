import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management/core/utils/app_colors.dart';
import 'package:task_management/core/utils/app_images.dart';

Widget temp(double hight, double width) {
  return Container(
    width: width.w,
    height: hight.h,
    decoration: ShapeDecoration(
      image: const DecorationImage(
        image: AssetImage(AppImages.temp),
        fit: BoxFit.fill,
      ),
      shape: OvalBorder(
        side: BorderSide(width: 1.w, color: AppColors.secondry),
      ),
    ),
  );
}
