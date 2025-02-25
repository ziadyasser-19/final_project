import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/core/widgets/custom_categories_container.dart';
import 'package:final_project/core/widgets/custom_home_icon_container.dart';
import 'package:final_project/core/widgets/custom_sale_item_container.dart';
import 'package:final_project/core/widgets/custom_timer_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 552.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColor.secondcontainergridcolor,
                    AppColor.secondcontainergridcolor,
                    AppColor.secondcontainergridcolor,
                    AppColor.thirdcontainergridcolor,
                    AppColor.thirdcontainergridcolor,
                    AppColor.thirdcontainergridcolor,
                    AppColor.thirdcontainergridcolor,
                    AppColor.thirdcontainergridcolor,
                    AppColor.thirdcontainergridcolor,
                    AppColor.fourthcontainergridcolor,
                    AppColor.fourthcontainergridcolor,
                    AppColor.fifthcontainergridcolor,
                    // AppColor.fifthcontainergridcolor,
                    AppColor.whiteConstantColor,
                    AppColor.whiteConstantColor,
                    AppColor.whiteConstantColor,
                    AppColor.whiteConstantColor,
                    AppColor.whiteConstantColor,
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    Row(
                      children: [
                        CustomHomeIconContainer(
                            containerIcon: Icons.location_on),
                        SizedBox(
                          width: 15.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Location',
                              style: GoogleFonts.plusJakartaSans(
                                color: Colors.white
                                    .withOpacity(0.8999999761581421),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                height: 1.33.h,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'Condong Catur',
                              style: GoogleFonts.plusJakartaSans(
                                color: AppColor.whiteConstantColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                height: 1.43.h,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 65.w,
                        ),
                        CustomHomeIconContainer(
                            containerIcon: Icons.notifications),
                        SizedBox(
                          width: 12.w,
                        ),
                        CustomHomeIconContainer(
                          avatar_image:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQH5sFjZPx1Yzi1b9_FpQzrxqgsjv2DPAp81Q&s",
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30.h),
                      child: Text(
                        'Find best device for \nyour setup!',
                        style: GoogleFonts.plusJakartaSans(
                          color: Colors.white,
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w600,
                          height: 1.5.h,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 300.h,
                      width: 335.w,
                      child: Stack(
                        clipBehavior:
                            Clip.none, // 3shan amn3 enh my2sh mn el sora
                        children: [
                          Container(
                            width: 335.w,
                            height: 225.h,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/imgs/Background.png"),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(21.r),
                            ),
                          ),
                          Positioned(
                            right: 15.w,
                            bottom: 35.h,
                            child: Image.asset(
                              "assets/imgs/headphones.png",
                              width: 150.w,
                              height: 300.h,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Positioned(
                            top: 35.h,
                            left: 23.w,
                            child: Text(
                              'New Bing \nWireless \nEarphone',
                              style: GoogleFonts.plusJakartaSans(
                                color: AppColor.whiteConstantColor,
                                fontSize: 28.sp,
                                fontWeight: FontWeight.w700,
                                height: 1.4.h,
                              ),
                            ),
                          ),
                          Positioned(
                              left: 23.w,
                              top: 170.h,
                              child: Row(
                                children: [
                                  Text(
                                    'See Offer',
                                    style: GoogleFonts.plusJakartaSans(
                                      color: AppColor.whiteConstantColor,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                      height: 1.50.h,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6.w,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: AppColor.whiteConstantColor,
                                    size: 20.sp,
                                  )
                                ],
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Hot deals🔥',
                        style: GoogleFonts.plusJakartaSans(
                          color: AppColor.teaxtAppMainColor,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          height: 1.44.h,
                        ),
                      ),
                      SizedBox(
                        width: 112.w,
                      ),
                      CustomTimerContainer(containerTime: "02"),
                      Text(
                        ":",
                        style: GoogleFonts.plusJakartaSans(
                            color: AppColor.teaxtAppMainColor,
                            fontWeight: FontWeight.bold),
                      ),
                      CustomTimerContainer(containerTime: "12"),
                      Text(
                        ":",
                        style: GoogleFonts.plusJakartaSans(
                            color: AppColor.teaxtAppMainColor,
                            fontWeight: FontWeight.bold),
                      ),
                      CustomTimerContainer(containerTime: "00"),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0.h),
                    child: SizedBox(
                      height: 270.h,
                      width: double.infinity,
                      child: ListView.builder(
                        padding: EdgeInsets.symmetric(vertical: 20.h),
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            CustomSaleItemContainer(),
                      ),
                    ),
                  ),
                  Text(
                    'Categories',
                    style: GoogleFonts.plusJakartaSans(
                      color: AppColor.teaxtAppMainColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.44.h,
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 80.w,
                          height: 40.h,
                          decoration: ShapeDecoration(
                            color: AppColor.buttonColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 4.w,
                              ),
                              Container(
                                width: 30.w,
                                height: 35.h,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40.r),
                                  ),
                                ),
                                child: Center(
                                  child: Icon(Icons.apps),
                                ),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                'All',
                                style: GoogleFonts.plusJakartaSans(
                                  color: AppColor.whiteConstantColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  height: 1.29.h,
                                ),
                              )
                            ],
                          ),
                        ),
                        CustomCategoriesContainer(
                            categoryName: "Laptop", categoryIcon: '💻'),
                        CustomCategoriesContainer(
                            categoryName: "Accessories", categoryIcon: '🎧'),
                        CustomCategoriesContainer(
                            categoryName: "Phones", categoryIcon: '📱'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0.h , horizontal: 10.w),
              child: SizedBox(
                height: 500.h,
                child: GridView.builder(
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 30.h,
                      childAspectRatio: 155.w / 221.h),
                  itemCount: 4,
                  itemBuilder: (context, index) => CustomSaleItemContainer(),
                ),
              ),
            ),
            SizedBox(height: 18.h,),
          ],
        ),
      ),
    );
  }
}
