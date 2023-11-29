import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management/core/utils/app_colors.dart';

Widget days() {
  int day = DateTime.now().day;
  return SizedBox(
    width: 399.w,
    height: 69.h,
    child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            width: 44.95.w,
            height: 69.h,
            color:
                day == index + 1 ? AppColors.secondry : const Color(0xFF263238),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  (index + 1).toString(),
                  style: TextStyle(
                    color: day == index + 1 ? Colors.black : Colors.white,
                    fontSize: 18.82.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Mon',
                  style: TextStyle(
                    color: day == index + 1 ? Colors.black : Colors.white,
                    fontSize: 9.41.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 15.05.w);
        },
        itemCount: 30),
  );
}
