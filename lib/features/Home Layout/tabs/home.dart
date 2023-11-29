import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management/core/utils/app_colors.dart';
import 'package:task_management/core/utils/app_images.dart';
import 'package:task_management/core/utils/app_styles.dart';
import 'package:task_management/core/utils/componetns.dart';
import 'package:task_management/features/Home%20Layout/widgets/complete_tasks.dart';
import 'package:task_management/features/Home%20Layout/widgets/openning_project.dart';
import 'package:task_management/features/Home%20Layout/widgets/temp.dart';
import 'package:task_management/features/profile.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Column(
          children: [
            Text(
              'Welcome Back!',
              style: AppStyles.buttonText
                  .copyWith(color: AppColors.secondry, fontSize: 14.sp),
            ),
            Text(
              'Ahmed Mohmed',
              style: AppStyles.titleOfItems,
            ),
          ],
        ),
        actions: [
          Componetns.openContainers(
              closedWidget: temp(48, 47), openedWidget: Profile()),
          SizedBox(
            width: 28.w,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 22.w),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 311.w,
                      height: 58.h,
                      child: Componetns.customTextField(
                          controller: controller,
                          icon: AppImages.searchnormal1),
                    ),
                    Container(
                      width: 57.w,
                      height: 58.h,
                      color: AppColors.secondry,
                      child: Center(
                        child: Image.asset(AppImages.setting4),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 34.h),
                Text(
                  'Completed Tasks',
                  style: AppStyles.title,
                ),
                SizedBox(height: 13.h),
                completeTasks(),
                SizedBox(height: 34.h),
                Text(
                  'Ongoing Projects',
                  style: AppStyles.title,
                ),
                SizedBox(height: 16.h),
                openningProject(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
