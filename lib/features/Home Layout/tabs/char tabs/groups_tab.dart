import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management/features/Home%20Layout/widgets/temp.dart';

Widget groupsTab() {
  return SizedBox(
    height: 690.h,
    width: 370.w,
    child: ListView.separated(
        itemBuilder: (context, index) {
          return SizedBox(
            height: 43.h,
            width: 370.w,
            child: ListTile(
              leading: temp(47, 47),
              title: Text(
                'Android Developer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                'Robert: Did you check the last task?',
                style: TextStyle(
                  color: const Color(0xFFB7B7B7),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: Text(
                '15:35',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 37.h,
          );
        },
        itemCount: 8),
  );
}
