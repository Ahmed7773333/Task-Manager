import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management/core/utils/app_colors.dart';
import 'package:task_management/core/utils/componetns.dart';
import 'package:task_management/features/Home%20Layout/widgets/temp.dart';

import '../core/utils/app_images.dart';
import '../core/utils/app_styles.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});
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
        title: Row(children: [
          temp(47, 47),
          SizedBox(
            width: 5.w,
          ),
          Column(
            children: [
              Text(
                'Olivia Anna',
                style: AppStyles.title.copyWith(fontSize: 14.sp),
              ),
              Text(
                'Online',
                style: AppStyles.title
                    .copyWith(fontSize: 14.sp, color: AppColors.onPrimary),
              ),
            ],
          ),
        ]),
        actions: [
          Image.asset(AppImages.video),
          SizedBox(width: 19.w),
          Image.asset(AppImages.callcalling),
          SizedBox(width: 19.w),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 28.w, left: 22.w, bottom: 28.h),
        child: Column(
          children: [
            const Spacer(),
            Row(
              children: [
                Componetns.customTextField(
                  controller: controller,
                  icon: AppImages.elementequal,
                  icon2: AppImages.send,
                  color: const Color(0xFF263238),
                  width: 320,
                ),
                Container(
                  width: 52,
                  height: 52,
                  decoration: const BoxDecoration(color: Color(0xFF263238)),
                  child: Center(
                    child: Image.asset(AppImages.microphone2),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
