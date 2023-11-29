import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management/core/utils/app_colors.dart';
import 'package:task_management/core/utils/app_images.dart';
import 'package:task_management/core/utils/app_styles.dart';
import 'package:task_management/core/utils/componetns.dart';
import 'package:task_management/features/Home%20Layout/widgets/temp.dart';

import '../config/app_routes.dart';
import 'sign_in.dart';

class Profile extends StatelessWidget {
  Profile({super.key});
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
        title: Text('Profile', style: AppStyles.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 133.w,
                    height: 133.h,
                    decoration: ShapeDecoration(
                      shape: OvalBorder(
                        side: BorderSide(
                          width: 2.w,
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: AppColors.secondry,
                        ),
                      ),
                    ),
                    child: temp(127, 127),
                  ),
                  Positioned(
                    bottom: 3.h,
                    right: 6.w,
                    child: Image.asset(
                      AppImages.addsquare,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 52.h),
              Componetns.customTextField(
                  controller: controller,
                  icon: AppImages.usericon,
                  icon2: AppImages.edit),
              SizedBox(height: 26.h),
              Componetns.customTextField(
                  controller: controller,
                  icon: AppImages.emailIcon,
                  icon2: AppImages.edit),
              SizedBox(height: 26.h),
              Componetns.customTextField(
                  controller: controller,
                  icon: AppImages.passicon,
                  icon2: AppImages.edit),
              SizedBox(height: 26.h),
              Componetns.customTextField(
                  controller: controller,
                  icon: AppImages.mytasks,
                  icon2: AppImages.arrowdown2),
              SizedBox(height: 26.h),
              Componetns.customTextField(
                  controller: controller,
                  icon: AppImages.securitycard,
                  icon2: AppImages.arrowdown2),
              SizedBox(height: 26.h),
              Componetns.customTextField(
                  controller: controller,
                  icon: AppImages.setting2,
                  icon2: AppImages.arrowdown2),
              SizedBox(height: 46.h),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => SingInScreen()),
                    (route) => route.settings.name == Routes.signIn,
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.logoutcurve),
                    Text('Logout', style: AppStyles.buttonText),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
