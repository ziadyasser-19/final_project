import 'package:final_project/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAlertDialog extends StatelessWidget {
  final String dialogmessage;
  final Icon dialogicon;
  const CustomAlertDialog({super.key, required this.dialogmessage, required this.dialogicon});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: dialogicon,
              
            ),
            SizedBox(height: 20.h),
            Text(
              
              dialogmessage,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 22.sp,
                color: AppColor.teaxtAppMainColor,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
