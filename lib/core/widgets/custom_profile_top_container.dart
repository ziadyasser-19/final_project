import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/core/widgets/custom_app_bar_container_icon.dart';
import 'package:final_project/feature/home/data/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomProfileTopContainer extends StatelessWidget {
  final UserModel user;
  const CustomProfileTopContainer({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290.h,
      width: 375.w,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topCenter,
          colors: [
            AppColor.firstProfilecontainergridcolor,
            AppColor.firstProfilecontainergridcolor,
            AppColor.firstProfilecontainergridcolor,
            AppColor.secondProfilecontainergridcolor,
            AppColor.secondProfilecontainergridcolor,
            AppColor.thirdProfilecontainergridcolor,
            AppColor.whiteConstantColor,
            AppColor.whiteConstantColor,
            AppColor.whiteConstantColor,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomAppBarContainerIcon(
                containerIcon: Icons.arrow_back,
                ontapFn: () {},
              ),
              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  'Profile',
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColor.teaxtAppMainColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.44.h,
                  ),
                ),
              ),
              CustomAppBarContainerIcon(
                containerIcon: Icons.edit,
                ontapFn: () {},
              ),
            ],
          ),
          SizedBox(
            height: 33.h,
          ),
          Center(
            child: Container(
              width: 100.w,
              height: 120.h,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://w7.pngwing.com/pngs/4/736/png-transparent-female-avatar-girl-face-woman-user-flat-classy-users-icon.png"),
                  fit: BoxFit.fill,
                ),
                shape: OvalBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Center(
            child: Text(
              user.username!,
              textAlign: TextAlign.center,
              style: GoogleFonts.plusJakartaSans(
                color: AppColor.teaxtAppMainColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                height: 1.44.h,
              ),
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Center(
            child: Text(
              user.email.toString(),
              style: GoogleFonts.plusJakartaSans(
                color: AppColor.secondarytextColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                height: 1.43.h,
              ),
            ),
          )
        ],
      ),
    );
  }
}
