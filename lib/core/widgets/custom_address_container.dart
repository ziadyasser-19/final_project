import 'package:final_project/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAddressContainer extends StatelessWidget {
  final String address;
  final String locationTitle;
  final bool isSelected;
  final bool isDefault;
  const CustomAddressContainer(
      {super.key, required this.address, required this.locationTitle, required this.isSelected, required this.isDefault});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 150.h,
      margin: EdgeInsets.symmetric(vertical: 11.h),
      decoration: ShapeDecoration(
        color: AppColor.whiteConstantColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: isSelected? Colors.orange : Color(0xFFEAEAEA)),
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 16.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  locationTitle,
                  style: GoogleFonts.plusJakartaSans(
                    color: isSelected?Colors.orange: AppColor.teaxtAppMainColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.29.h,
                  ),
                ),
                if(isDefault)
                Container(
                  width: 53.w,
                  height: 23.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFF20AD20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Default',
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColor.whiteConstantColor,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  address,
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColor.teaxtAppMainColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.43.h,
                  ),
                ),
                ClipRRect(
                  child: Container(
                    width: 65.w,
                    height: 70.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.r),
                      image: DecorationImage(
                        image: AssetImage("assets/imgs/Map.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
