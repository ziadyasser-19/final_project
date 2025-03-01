import 'package:final_project/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTopOrdersContainer extends StatelessWidget {
  const CustomTopOrdersContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Address',
                style: GoogleFonts.plusJakartaSans(
                  color: AppColor.teaxtAppMainColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.44.h,
                ),
              ),
              Text(
                'Edit',
                style: GoogleFonts.plusJakartaSans(
                  color: Color(0xFF1B5EC9),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.43.h,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 8.h),
          child: Text(
            '🏠  Home',
            style: GoogleFonts.plusJakartaSans(
              color: AppColor.teaxtAppMainColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              height: 1.43.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Text(
            '10th of ramadan City',
            style: GoogleFonts.plusJakartaSans(
              color: AppColor.secondarytextColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              height: 1.67.h,
            ),
          ),
        )
      ],
    );
  }
}
