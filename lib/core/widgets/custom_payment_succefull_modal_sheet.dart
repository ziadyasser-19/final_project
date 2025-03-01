import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/core/widgets/custom_button.dart';
import 'package:final_project/feature/main_screen/presentation/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPaymentSuccefullModalSheet extends StatelessWidget {
  const CustomPaymentSuccefullModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 565.h,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.r),
            topRight: Radius.circular(24.r),
          ),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.h),
          Center(
            child: Container(
              height: 4.h,
              width: 66.7.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.r),
                color: Colors.black.withOpacity(0.2),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24.0.h),
            child: Center(
              child: SizedBox(
                height: 253.h,
                width: 243.w,
                child: Image.asset("assets/imgs/succefull.png"),
              ),
            ),
          ),
          Text(
            'Order Successful!',
            textAlign: TextAlign.center,
            style: GoogleFonts.plusJakartaSans(
              color: AppColor.teaxtAppMainColor,
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              height: 1.25,
            ),
          ),
          Text(
            'You have successfully made order',
            textAlign: TextAlign.center,
            style: GoogleFonts.plusJakartaSans(
              color: AppColor.secondarytextColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              height: 1.43,
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          CustomButton(label: "View Order", onPressed: () {}),
          SizedBox(
            height: 12.h,
          ),
          CustomButton(
              label: "Back to Home",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainScreen()));
              },
              isWhite: true,
              ),
        ],
      ),
    );
  }
}
