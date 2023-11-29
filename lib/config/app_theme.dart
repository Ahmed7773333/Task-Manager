import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';
import '../core/utils/app_styles.dart';

class AppTheme {
  static ThemeData mode = ThemeData(
    scaffoldBackgroundColor: AppColors.primary,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusColor: AppColors.onPrimary,
      fillColor: AppColors.onPrimary,
      filled: true,
      hintStyle: AppStyles.title,
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.onPrimary,
        ),
      ),
      disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.onPrimary,
        ),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.onPrimary,
        ),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
        ),
      ),
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.onPrimary,
        ),
      ),
      errorStyle: AppStyles.title,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.secondry,
          fixedSize: const Size(376, 67),
          shape: const ContinuousRectangleBorder()),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xFF263238),
      showUnselectedLabels: true,
      showSelectedLabels: true,
      selectedLabelStyle: AppStyles.barStyle,
      unselectedLabelStyle: AppStyles.barStyle,
      selectedItemColor: AppColors.secondry,
      unselectedItemColor: AppColors.onPrimary,
    ),
  );
}
