import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management/core/utils/app_colors.dart';
import 'package:task_management/core/utils/app_styles.dart';

import '../core/utils/app_images.dart';
import 'Home Layout/widgets/temp.dart';

class Message extends StatelessWidget {
  const Message({super.key});

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
        title: Text('New Message', style: AppStyles.title),
        actions: [
          Image.asset(AppImages.searchnormal1),
          SizedBox(width: 40.w),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 43.h,
              width: 370.w,
              child: ListTile(
                leading: Container(
                  width: 47.w,
                  height: 47.h,
                  decoration: const ShapeDecoration(
                    color: AppColors.secondry,
                    shape: OvalBorder(),
                  ),
                  child: Center(
                    child: Image.asset(AppImages.profile2user),
                  ),
                ),
                title: Text(
                  'Create a Group',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 37.h),
            SizedBox(
              height: (12 * 80).h,
              width: 370.w,
              child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 43.h,
                      width: 370.w,
                      child: ListTile(
                        leading: temp(47, 47),
                        title: Text(
                          'James',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 37.h);
                  },
                  itemCount: 12),
            ),
          ],
        ),
      ),
    );
  }
}
