import 'package:final_project/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBarContainerIcon extends StatelessWidget {
  final IconData containerIcon;
  final VoidCallback ontapFn;
  const CustomAppBarContainerIcon({super.key, required this.containerIcon, required this.ontapFn});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontapFn,
      child: Container(
        width: 44.w,
        height: 55.h,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 2, color: AppColor.outlinegreyBorderColor),
            borderRadius: BorderRadius.circular(34.r),
          ),
        ),
        child: Center(
          child: Icon(
            containerIcon,
            color: AppColor.buttonColor,
            size: 22.sp,
          ),
        ),
      ),
    );
  }
}
