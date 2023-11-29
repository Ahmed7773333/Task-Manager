import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management/config/app_routes.dart';
import 'package:task_management/core/utils/app_images.dart';
import 'package:task_management/core/utils/app_styles.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 26.w, right: 26.w),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 95.w,
                height: 80.h,
                decoration: const BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage(AppImages.logo), fit: BoxFit.fill)),
              ),
              Container(
                width: 369.w,
                height: 330.h,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage(AppImages.startscrenn),
                      fit: BoxFit.cover),
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Manage\nyour\nTask with\n',
                      style:
                          AppStyles.startScreen.copyWith(color: Colors.white),
                    ),
                    TextSpan(
                      text: 'DayTask',
                      style: AppStyles.startScreen,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.signIn);
                },
                child: Center(
                  child: Text('Let’s Start', style: AppStyles.buttonText),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
