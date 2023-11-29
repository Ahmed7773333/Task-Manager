import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management/core/utils/app_colors.dart';
import 'package:task_management/core/utils/app_images.dart';
import 'package:task_management/core/utils/componetns.dart';
import 'package:task_management/features/Home%20Layout/widgets/temp.dart';
import 'package:task_management/features/chat_page.dart';

import '../../../../core/utils/app_styles.dart';

Widget chatsTab() {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          height: (6 * 107).h,
          width: 370.w,
          child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Componetns.openContainers(
                  openedWidget: ChatPage(),
                  closedWidget: SizedBox(
                    height: 70.h,
                    width: 370.w,
                    child: ListTile(
                      leading: temp(47, 47),
                      title: Text(
                        'James ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        'Hi, please check the last task, that I....',
                        style: TextStyle(
                          color: const Color(0xFFB7B7B7),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      trailing: Column(
                        children: [
                          Text(
                            '43 min',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Image.asset(AppImages.ellipse37),
                        ],
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
              itemCount: 6),
        ),
        SizedBox(
          height: 52.h,
        ),
        FilledButton(
          onPressed: () {},
          style: FilledButton.styleFrom(
            fixedSize: const Size(175, 47),
            backgroundColor: AppColors.secondry,
            shape: const ContinuousRectangleBorder(),
          ),
          child: Center(
            child: Text(
              'Start Chat',
              style: AppStyles.buttonText,
            ),
          ),
        ),
      ],
    ),
  );
}
