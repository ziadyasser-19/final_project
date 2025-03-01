import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/core/widgets/custom_payment_method_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomShippingContainer extends StatelessWidget {
  const CustomShippingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomPaymentMethodContainer(
            imageAssetsUrl: "assets/imgs/ship.png",
            cardNumber: "00",
            methodName: "J&t Express",
            isShipping: true,
          ),
          Container(
            width: 335.w,
            height: 68.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            decoration: BoxDecoration(
                border: Border.all(width: 1 ,  color: AppColor.outlinegreyBorderColor),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.r),
                    bottomRight: Radius.circular(20.r)),
                color: AppColor.whiteConstantColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h,),
                Text(
                  'Regular (\$8)',
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColor.teaxtAppMainColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.43.h,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  'Estimate time 01 - 03 November',
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColor.secondarytextColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.67.h,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
