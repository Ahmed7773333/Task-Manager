import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management/features/Home%20Layout/widgets/temp.dart';

Widget oneNoti() {
  return SizedBox(
    height: (4 * 70).h,
    width: 370.w,
    child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return SizedBox(
            height: 43.h,
            width: 370.w,
            child: ListTile(
              leading: temp(47, 47),
              title: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Olivia Anna ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: 'left a comment in task\n',
                      style: TextStyle(
                        color: const Color(0xFF8CAAB8),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: 'Mobile App Design Project',
                      style: TextStyle(
                        color: const Color(0xFFFED36A),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
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
            height: 23.h,
          );
        },
        itemCount: 4),
  );
}
