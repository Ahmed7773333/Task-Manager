import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management/core/utils/app_colors.dart';
import 'package:task_management/core/utils/app_styles.dart';
import 'package:task_management/core/utils/componetns.dart';
import 'package:task_management/features/task_details.dart';

import 'temp.dart';

Widget openningProject() {
  return SizedBox(
    width: 384.w,
    height: 1400.h,
    child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Componetns.openContainers(
            closedWidget: Container(
              width: 384.w,
              height: 125.h,
              color: AppColors.onPrimary,
              child: Stack(
                children: [
                  Positioned(
                    top: 9.h,
                    left: 10.w,
                    child: Text(
                      'Mobile App Wireframe',
                      style: AppStyles.titleOfItems,
                    ),
                  ),
                  Positioned(
                    top: 42.h,
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
                    top: 98.h,
                    left: 10.w,
                    child: Text(
                      'Due on : 21 March',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 75.h,
                    left: 327.w,
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
                    top: 54.h,
                    left: 309.w,
                    child: Container(
                      width: 59.w,
                      height: 59.h,
                      decoration: ShapeDecoration(
                        shape: OvalBorder(
                          side:
                              BorderSide(width: 2.w, color: AppColors.secondry),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 65.h,
                    left: 37.w,
                    child: temp(20, 20),
                  ),
                  Positioned(
                    top: 65.h,
                    left: 25.w,
                    child: temp(20, 20),
                  ),
                  Positioned(
                    top: 65.h,
                    left: 13.w,
                    child: temp(20, 20),
                  ),
                ],
              ),
            ),
            openedWidget: const TaskDetails(),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 15.h);
        },
        itemCount: 10),
  );
}
