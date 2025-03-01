import 'package:final_project/core/constants/app_color.dart';

import 'package:final_project/feature/cart/logic/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPaymentSummary extends StatelessWidget {
  const CustomPaymentSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric( vertical: 25.h),
            child: Text(
              'Payment Summary',
              style: GoogleFonts.plusJakartaSans(
                color: AppColor.teaxtAppMainColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                height: 1.44.h,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Price',
                style: GoogleFonts.plusJakartaSans(
                  color: AppColor.secondarytextColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  height: 1.43,
                ),
              ),
              Text(
                '\$ ${context.read<CartCubit>().totalPrice.round()}',
                textAlign: TextAlign.right,
                style: GoogleFonts.plusJakartaSans(
                  color: AppColor.teaxtAppMainColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.43.h,
                ),
              )
            ],
          ),
          SizedBox(height: 12.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Delivery Fee',
                style: GoogleFonts.plusJakartaSans(
                  color: AppColor.secondarytextColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  height: 1.43,
                ),
              ),
              Text(
                '\$ 1.5',
                textAlign: TextAlign.right,
                style: GoogleFonts.plusJakartaSans(
                  color: AppColor.teaxtAppMainColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.43.h,
                ),
              )
            ],
          ),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: 16.0.h),
            child: Divider(height: 1.h, color: AppColor.outlinegreyBorderColor,),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Payment',
                style: GoogleFonts.plusJakartaSans(
                  color: AppColor.secondarytextColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  height: 1.43,
                ),
              ),
              Text(
                '\$ ${context.read<CartCubit>().totalPrice.round() + 2}',
                textAlign: TextAlign.right,
                style: GoogleFonts.plusJakartaSans(
                  color: AppColor.teaxtAppMainColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.43.h,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
