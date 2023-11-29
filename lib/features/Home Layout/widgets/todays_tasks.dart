import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management/core/utils/app_colors.dart';
import 'package:task_management/core/utils/app_styles.dart';

import 'temp.dart';

Widget todaysTasks() {
  return SizedBox(
    width: 370.w,
    height: 900.h,
    child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            width: 370.w,
            height: 72.h,
            color: const Color(0xFF263238),
            child: Stack(
              children: [
                Positioned(
                  top: 13.h,
                  left: 42.w,
                  child: Text(
                    'Wireframe',
                    style: AppStyles.title,
                  ),
                ),
                Positioned(
                  top: 37.h,
                  left: 42.w,
                  child: Text(
                    '16:00 - 18:30',
                    style: TextStyle(
                      color: AppColors.onPrimary,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  child: Container(
                    width: 11.w,
                    height: 72.h,
                    color: AppColors.secondry,
                  ),
                ),
                Positioned(
                  top: 27.h,
                  left: 303.w,
                  child: temp(20, 20),
                ),
                Positioned(
                  top: 27.h,
                  left: 316.w,
                  child: temp(20, 20),
                ),
                Positioned(
                  top: 27.h,
                  left: 329.w,
                  child: temp(20, 20),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 18.h);
        },
        itemCount: 10),
  );
}
