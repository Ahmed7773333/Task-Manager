import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Componetns {
  static Widget customTextField({
    bool? isPassword,
    VoidCallback? onPressed,
    String? icon,
    String? icon2,
    Color? color,
    int? lines,
    double? width,
    required TextEditingController controller,
  }) {
    return SizedBox(
      width: width?.w ?? 376.w,
      height: (lines ?? 1) * 58.h,
      child: TextFormField(
        maxLines: lines ?? 1,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.sp,
          fontWeight: FontWeight.w400,
        ),
        controller: controller,
        obscureText: isPassword ?? false,
        validator: (value) {
          if (value?.trim().isEmpty ?? false) {
            return 'Field can\'t be empty';
          }
          return null;
        },
        decoration: InputDecoration(
          fillColor: color,
          prefixIcon: icon != null ? Image.asset(icon) : null,
          suffixIcon: isPassword ?? false ? Image.asset(icon2 ?? '') : null,
        ),
      ),
    );
  }

  static Widget openContainers({Widget? closedWidget, Widget? openedWidget}) {
    return OpenContainer(
      closedElevation: 0,
      openElevation: 0,
      transitionDuration: const Duration(milliseconds: 500),
      closedColor: Colors.transparent,
      openColor: Colors.transparent,
      closedBuilder: (BuildContext context, void Function() action) {
        return closedWidget!;
      },
      openBuilder:
          (BuildContext context, void Function({Object? returnValue}) action) {
        return openedWidget!;
      },
    );
  }
}
