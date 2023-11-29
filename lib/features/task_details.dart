import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management/core/utils/app_colors.dart';
import 'package:task_management/features/Home%20Layout/widgets/temp.dart';

import '../core/utils/app_images.dart';
import '../core/utils/app_styles.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(AppImages.arrowleft),
        ),
        title: Text('Task Details', style: AppStyles.title),
        actions: [
          Image.asset(AppImages.edit),
          SizedBox(
            width: 40.w,
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 777.h,
            left: 29.w,
            child: Text(
              'Real Estate App Design',
              style: AppStyles.titleOfItems,
            ),
          ),
          Positioned(
            bottom: 703.h,
            left: 29.w,
            child: Container(
              width: 47.w,
              height: 47.h,
              color: AppColors.secondry,
              child: Center(
                child: Image.asset(
                  AppImages.calendar,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 703.h,
            left: 237.w,
            child: Container(
              width: 47.w,
              height: 47.h,
              color: AppColors.secondry,
              child: Center(
                child: Image.asset(
                  AppImages.profile2user,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 725.h,
            left: 90.w,
            child: Text(
              'Team Project',
              style: TextStyle(
                color: AppColors.onPrimary,
                fontSize: 11.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            bottom: 725.h,
            left: 300.w,
            child: Text(
              'Due Date',
              style: TextStyle(
                color: AppColors.onPrimary,
                fontSize: 11.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            bottom: 705.h,
            left: 90.w,
            child: Text(
              '20 June',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Positioned(
            bottom: 705.h,
            left: 300.w,
            child: temp(20, 20),
          ),
          Positioned(
            bottom: 705.h,
            left: 313.w,
            child: temp(20, 20),
          ),
          Positioned(
            bottom: 705.h,
            left: 326.w,
            child: temp(20, 20),
          ),
          Positioned(
            bottom: 651.h,
            left: 29.w,
            child: Text(
              'Project Details',
              style: AppStyles.title,
            ),
          ),
          Positioned(
            bottom: 546.h,
            left: 29.w,
            child: SizedBox(
              width: 370.w,
              height: 96.h,
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\n',
                style: TextStyle(
                  color: AppColors.onPrimary,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 511.h,
            left: 29.w,
            child: Text(
              'Project Progress',
              style: AppStyles.title,
            ),
          ),
          Positioned(
            bottom: 451.h,
            left: 29.w,
            child: Text(
              'All Tasks',
              style: AppStyles.title,
            ),
          ),
          Positioned(
            bottom: 513.h,
            left: 357.w,
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
            bottom: 492.h,
            left: 340.w,
            child: Container(
              width: 59.w,
              height: 59.h,
              decoration: ShapeDecoration(
                shape: OvalBorder(
                  side: BorderSide(width: 2.w, color: AppColors.secondry),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 371.h,
            left: 29.w,
            child: Container(
              width: 370.w,
              height: 58.h,
              color: AppColors.onPrimary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'User Interviews',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    width: 40.w,
                    height: 40.h,
                    color: AppColors.secondry,
                    child: Center(
                      child: Icon(Icons.check_circle_outline_outlined,
                          color: Colors.black, size: 24.r),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 428.w,
              height: 114.h,
              color: AppColors.onPrimary,
              child: Padding(
                padding: EdgeInsets.all(30.r),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      'Add Task',
                      style: AppStyles.buttonText,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
