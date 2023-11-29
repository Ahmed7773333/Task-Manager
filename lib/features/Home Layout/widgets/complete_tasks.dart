import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management/core/utils/app_colors.dart';
import 'package:task_management/core/utils/app_styles.dart';
import 'package:task_management/core/utils/componetns.dart';
import 'package:task_management/features/task_details.dart';

import 'temp.dart';

Widget completeTasks() {
  return SizedBox(
    width: 406.w,
    height: 175.h,
    child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Componetns.openContainers(
            closedWidget: Container(
              width: 183.w,
              height: 175.h,
              color: AppColors.onPrimary,
              child: Stack(
                children: [
                  Positioned(
                    top: 7.h,
                    left: 10.w,
                    child: Text(
                      'Real Estate \nWebsite \nDesign',
                      style: AppStyles.titleOfItems.copyWith(fontSize: 19.sp),
                    ),
                  ),
                  Positioned(
                    top: 102.h,
                    left: 10.w,
                    child: Text(
                      'Team members',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 132.h,
                    left: 10.w,
                    child: Text(
                      'Completed',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 132.h,
                    left: 150.w,
                    child: Text(
                      '100%',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 152.h,
                    left: 12.w,
                    child: Container(
                      width: 163.w,
                      height: 6.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r)),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100.h,
                    left: 102.w,
                    child: temp(20, 20),
                  ),
                  Positioned(
                    top: 100.h,
                    left: 115.w,
                    child: temp(20, 20),
                  ),
                  Positioned(
                    top: 100.h,
                    left: 128.w,
                    child: temp(20, 20),
                  ),
                  Positioned(
                    top: 100.h,
                    left: 141.w,
                    child: temp(20, 20),
                  ),
                  Positioned(
                    top: 100.h,
                    left: 154.w,
                    child: temp(20, 20),
                  ),
                ],
              ),
            ),
            openedWidget: const TaskDetails(),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 7.w);
        },
        itemCount: 10),
  );
}
