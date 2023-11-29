import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management/core/utils/app_colors.dart';
import 'package:task_management/features/Home%20Layout/tabs/calender.dart';
import 'package:task_management/features/Home%20Layout/tabs/chat.dart';
import 'package:task_management/features/Home%20Layout/tabs/notification.dart';
import 'package:task_management/features/Home%20Layout/widgets/add_button.dart';
import 'package:task_management/features/home%20layout/tabs/home.dart';

import '../../core/utils/app_images.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int _currentIndex = 0;
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: IndexedStack(
        index: _currentIndex,
        children: [
          Home(),
          const Chat(),
          const SizedBox(),
          const Calendar(),
          const NotificationT(),
        ],
      ),
      bottomNavigationBar: Stack(
        children: [
          BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  AppImages.home,
                  color: AppColors.onPrimary,
                ),
                activeIcon: Image.asset(
                  AppImages.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  AppImages.messages1,
                ),
                activeIcon: Image.asset(
                  AppImages.messages1,
                  color: AppColors.secondry,
                ),
                label: 'Chat',
              ),
              const BottomNavigationBarItem(
                icon: SizedBox.shrink(),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  AppImages.calendar,
                ),
                activeIcon: Image.asset(
                  AppImages.calendar,
                  color: AppColors.secondry,
                ),
                label: 'Calendar',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  AppImages.notification1,
                ),
                activeIcon: Image.asset(
                  AppImages.notification1,
                  color: AppColors.secondry,
                ),
                label: 'Notification',
              ),
            ],
          ),
          Positioned(bottom: 5.h, left: 187.w, child: addButton()),
        ],
      ),
    );
  }
}
