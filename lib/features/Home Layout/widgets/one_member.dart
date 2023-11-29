import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management/core/utils/app_colors.dart';
import 'package:task_management/features/Home%20Layout/widgets/temp.dart';

Widget oneMember() {
  return Container(
    width: 150.w,
    height: 41.h,
    color: AppColors.onPrimary,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            temp(20, 20),
            SizedBox(width: 5.w),
            Text(
              'Robert',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Icon(
          Icons.cancel_presentation_rounded,
          color: Colors.white,
          size: 20.r,
        )
      ],
    ),
  );
}
