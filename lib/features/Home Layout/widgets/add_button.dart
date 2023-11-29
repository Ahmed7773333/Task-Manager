import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management/core/utils/app_colors.dart';
import 'package:task_management/core/utils/app_images.dart';
import 'package:task_management/features/add_task.dart';

import '../../../core/utils/componetns.dart';

Widget addButton() {
  return Componetns.openContainers(
      closedWidget: Container(
        width: 54.w,
        height: 54.h,
        decoration: const BoxDecoration(color: AppColors.secondry),
        child: Center(
          child: Image.asset(
            AppImages.add,
          ),
        ),
      ),
      openedWidget: AddTask());
}
