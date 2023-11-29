import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management/core/utils/app_colors.dart';
import 'package:task_management/core/utils/app_images.dart';
import 'package:task_management/core/utils/app_styles.dart';
import 'package:task_management/core/utils/componetns.dart';
import 'package:task_management/features/Home%20Layout/widgets/divider.dart';

import '../config/app_routes.dart';

class SingInScreen extends StatelessWidget {
  SingInScreen({super.key});
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 170.w,
                    height: 120.h,
                    decoration: const BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: AssetImage(AppImages.logo),
                            fit: BoxFit.cover)),
                  ),
                ),
                SizedBox(height: 49.58.h),
                Text('Welcome Back!', style: AppStyles.titleAuth),
                SizedBox(height: 23.h),
                Text('Email Address', style: AppStyles.labelStyle),
                SizedBox(height: 16.h),
                Componetns.customTextField(
                    controller: controller, icon: AppImages.emailIcon),
                SizedBox(height: 27.h),
                Text('Password', style: AppStyles.labelStyle),
                SizedBox(height: 16.h),
                Componetns.customTextField(
                    controller: controller,
                    icon: AppImages.passicon,
                    icon2: AppImages.eyeslash,
                    isPassword: true),
                SizedBox(height: 11.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text('Forgot Password?', style: AppStyles.labelStyle),
                ),
                SizedBox(height: 38.h),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.home);
                  },
                  child: Center(
                    child: Text(
                      'Log In',
                      style: AppStyles.buttonText,
                    ),
                  ),
                ),
                SizedBox(height: 37.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    divider(),
                    Text('Or continue with', style: AppStyles.labelStyle),
                    divider(),
                  ],
                ),
                SizedBox(height: 37.h),
                Container(
                  width: 376.w,
                  height: 67.h,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 2.w, color: Colors.white),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.googlicon),
                      SizedBox(width: 12.w),
                      Text(
                        'Google',
                        style:
                            AppStyles.buttonText.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 26.h),
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, Routes.signUp);
                    },
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Don’t have an account? ',
                            style: AppStyles.labelStyle,
                          ),
                          TextSpan(
                            text: 'Sign Up',
                            style: AppStyles.labelStyle
                                .copyWith(color: AppColors.secondry),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
