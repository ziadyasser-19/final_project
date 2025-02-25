import 'package:final_project/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomeIconContainer extends StatelessWidget {
  final IconData? containerIcon;
  final String? avatar_image;

  const CustomHomeIconContainer({super.key, this.containerIcon, this.avatar_image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.w,
      height: 55.h,
      decoration: ShapeDecoration(
        color: Colors.white.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(34.r),
        ),
        image: avatar_image != null
            ? DecorationImage(
                image: NetworkImage(avatar_image!),
                fit: BoxFit.fill,
              )
            : null, // If no image, don't set DecorationImage
      ),
      child: containerIcon != null
          ? Center(
              child: Icon(
                containerIcon,
                color: AppColor.whiteConstantColor,
              ),
            )
          : null, // If no icon, don't add child
    );
  }
}
