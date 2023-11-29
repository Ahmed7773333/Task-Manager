import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management/core/utils/app_colors.dart';
import 'package:task_management/core/utils/app_images.dart';
import 'package:task_management/core/utils/app_styles.dart';
import 'package:task_management/core/utils/componetns.dart';
import 'package:task_management/features/Home%20Layout/widgets/one_member.dart';

class AddTask extends StatelessWidget {
  AddTask({super.key});
  final TextEditingController controller = TextEditingController();

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
        title: Text('Create New Task', style: AppStyles.title),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 41.w, right: 29.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Task Title',
                style: AppStyles.title.copyWith(fontSize: 20.sp),
              ),
              SizedBox(height: 9.h),
              Componetns.customTextField(controller: controller),
              SizedBox(height: 29.h),
              Text(
                'Task Details',
                style: AppStyles.title.copyWith(fontSize: 20.sp),
              ),
              SizedBox(height: 23.h),
              Componetns.customTextField(controller: controller, lines: 3),
              SizedBox(height: 23.h),
              Text(
                'Add team members',
                style: AppStyles.title.copyWith(fontSize: 20.sp),
              ),
              SizedBox(height: 21.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  oneMember(),
                  oneMember(),
                  Container(
                    width: 41.w,
                    height: 41.h,
                    decoration: const BoxDecoration(color: AppColors.secondry),
                    child: Image.asset(
                      AppImages.add,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              SizedBox(height: 21.h),
              Text(
                'Time & Date',
                style: AppStyles.title.copyWith(fontSize: 20.sp),
              ),
              SizedBox(height: 21.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 176.w,
                    height: 41.h,
                    color: AppColors.onPrimary,
                    child: Row(
                      children: [
                        Container(
                          height: 41.h,
                          width: 41.w,
                          color: AppColors.secondry,
                          child: Center(
                            child: Image.asset(AppImages.clock),
                          ),
                        ),
                        Container(
                          height: 41.h,
                          width: 135.w,
                          color: AppColors.onPrimary,
                          child: Center(
                            child: Text(
                              '10:30 AM',
                              style: AppStyles.buttonText
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 176.w,
                    height: 41.h,
                    color: AppColors.onPrimary,
                    child: Row(
                      children: [
                        Container(
                          height: 41.h,
                          width: 41.w,
                          color: AppColors.secondry,
                          child: Center(
                            child: Image.asset(AppImages.calendar,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          height: 41.h,
                          width: 135.w,
                          color: AppColors.onPrimary,
                          child: Center(
                            child: Text(
                              '15/11/2022',
                              style: AppStyles.buttonText
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 49.h),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Add New',
                  style: AppStyles.buttonText.copyWith(color: Colors.white),
                ),
              ),
              SizedBox(height: 42.h),
              ElevatedButton(
                onPressed: () {},
                child: Center(
                  child: Text(
                    'Create',
                    style: AppStyles.buttonText,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
