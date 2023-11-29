import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management/features/Home%20Layout/widgets/notification.dart';

import '../../../core/utils/app_styles.dart';

class NotificationT extends StatelessWidget {
  const NotificationT({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications', style: AppStyles.title),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 41.w, right: 21.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'New',
                style: AppStyles.title,
              ),
              oneNoti(),
              SizedBox(
                height: 36.h,
              ),
              Text(
                'Earlier',
                style: AppStyles.title,
              ),
              oneNoti(),
            ],
          ),
        ),
      ),
    );
  }
}
