import 'package:final_project/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBrowseFormfield extends StatelessWidget {
  const CustomBrowseFormfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 60.h,
      decoration: BoxDecoration(color: AppColor.whiteConstantColor),
      child: TextFormField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: AppColor.buttonColor,
            size: 23.sp,
          ),
          hintText: 'Search laptop, headset..',
          contentPadding: EdgeInsets.symmetric(vertical: 10.h),
          hintStyle: GoogleFonts.plusJakartaSans(
            color: AppColor.borderhintTextColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            height: 1.50.h,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.r),
              borderSide: BorderSide(color: AppColor.outlinegreyBorderColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.r),
              borderSide: BorderSide(color: AppColor.buttonColor)),
        ),
      ),
    );
  }
}
