import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_styles.dart';
import '../widgets/days.dart';
import '../widgets/todays_tasks.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule', style: AppStyles.title),
        actions: [
          Image.asset(AppImages.addsquare, color: Colors.white),
          SizedBox(width: 40.w),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 29.w),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 42.h),
                Text(
                  'November',
                  style: AppStyles.title,
                ),
                SizedBox(height: 26.h),
                days(),
                SizedBox(height: 32.h),
                Text(
                  'Today’s Tasks',
                  style: AppStyles.title,
                ),
                SizedBox(height: 26.h),
                todaysTasks(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
