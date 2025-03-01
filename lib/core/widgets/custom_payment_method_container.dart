import 'package:final_project/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPaymentMethodContainer extends StatelessWidget {
  final String imageAssetsUrl;
  final String cardNumber;
  final String methodName;
  final bool isShipping;
  const CustomPaymentMethodContainer(
      {super.key,
      required this.imageAssetsUrl,
      required this.cardNumber,
      required this.methodName,  this.isShipping = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isShipping? EdgeInsets.all(0) : EdgeInsets.symmetric(vertical: 13.0.h),
      child: Container(
        width: 335.w,
        height: 90.h,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 22.h),
        decoration: ShapeDecoration(
          color: AppColor.whiteConstantColor,
          shape: RoundedRectangleBorder(
            side:
                BorderSide(width: 1.h, color: AppColor.outlinegreyBorderColor),
            borderRadius: isShipping?BorderRadius.only(topLeft:Radius.circular(20.r) ,topRight: Radius.circular(20.r) ) : BorderRadius.circular(20.r),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 40.w,
              height: 40.h,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imageAssetsUrl), fit: BoxFit.contain)),
            ),
            SizedBox(
              width: 16.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if(isShipping)
                SizedBox(height: 12.h,),
                Text(
                  methodName,
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColor.teaxtAppMainColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.43.h,
                  ),
                ),
                if(!isShipping)
                SizedBox(
                  // 8
                  height: 5.h,
                ),
                if(!isShipping)
                Text(
                  cardNumber,
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColor.secondarytextColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.33.h,
                  ),
                )
              ],
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward,
              color: AppColor.buttonColor,
              size: 25.sp,
            )
          ],
        ),
      ),
    );
  }
}
