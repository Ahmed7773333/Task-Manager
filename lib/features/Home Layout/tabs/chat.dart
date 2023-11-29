import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management/core/utils/app_styles.dart';
import 'package:task_management/core/utils/componetns.dart';
import 'package:task_management/features/Home%20Layout/tabs/char%20tabs/chats_tab.dart';
import 'package:task_management/features/Home%20Layout/tabs/char%20tabs/groups_tab.dart';
import 'package:task_management/features/message.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_images.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  Color color1 = AppColors.secondry;
  Color color2 = AppColors.onPrimary;
  final List<Widget> pages = [
    chatsTab(),
    groupsTab(),
  ];

  int currentIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages', style: AppStyles.title),
        actions: [
          Componetns.openContainers(
              openedWidget: const Message(),
              closedWidget: Image.asset(AppImages.edit)),
          SizedBox(
            width: 40.w,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 29.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FilledButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 0;
                    });
                    pageController.jumpToPage(0);
                  },
                  style: FilledButton.styleFrom(
                    fixedSize: Size(175.w, 47.h),
                    backgroundColor: color1,
                    shape: const ContinuousRectangleBorder(),
                  ),
                  child: Center(
                    child: Text(
                      'Chat',
                      style: AppStyles.buttonText.copyWith(
                        color: color1 == AppColors.secondry
                            ? Colors.black
                            : Colors.white,
                      ),
                    ),
                  ),
                ),
                FilledButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 1;
                    });
                    pageController.jumpToPage(1);
                  },
                  style: FilledButton.styleFrom(
                    fixedSize: Size(175.w, 47.h),
                    backgroundColor: color2,
                    shape: const ContinuousRectangleBorder(),
                  ),
                  child: Center(
                    child: Text(
                      'Groups',
                      style: AppStyles.buttonText.copyWith(
                        color: color2 == AppColors.secondry
                            ? Colors.black
                            : Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 690.h,
              width: 370.w,
              child: PageView(
                controller: pageController,
                children: pages,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                    if (currentIndex == 0) {
                      color1 = AppColors.secondry;
                      color2 = AppColors.onPrimary;
                    } else if (currentIndex == 1) {
                      color2 = AppColors.secondry;
                      color1 = AppColors.onPrimary;
                    }
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
