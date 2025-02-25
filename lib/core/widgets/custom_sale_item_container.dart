import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_color.dart';

class CustomSaleItemContainer extends StatelessWidget {
  const CustomSaleItemContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 221.h,
      width: 155.w,
      margin: EdgeInsets.symmetric(horizontal: 15.w),
      decoration: BoxDecoration(
        color: AppColor.whiteConstantColor,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          
          Column(
            children: [
              // Image
              Container(
                height: 108.h,
                width: 123.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/imgs/laptop.png"),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              // Product Name
              Text(
                'dell GPro 15” \n2019 - Intel core i7',
                textAlign: TextAlign.center,
                style: GoogleFonts.plusJakartaSans(
                  color: AppColor.teaxtAppMainColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.43.h,
                ),
              ),
              SizedBox(height: 8.h),
              // Price
              Text(
                '\$1240',
                style: GoogleFonts.plusJakartaSans(
                  color: Color(0xFF1B5EC9),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  height: 1.50.h,
                ),
              ),
            ],
          ),
          // Bottom Tag
          Positioned(
            bottom: -15.h, 
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: IntrinsicWidth(
                child: Container(
                  height: 30.h,
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      'NEW 30% OFF',
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColor.whiteConstantColor,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}