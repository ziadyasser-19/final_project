import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/core/widgets/custom_address_container.dart';
import 'package:final_project/core/widgets/custom_app_bar_container_icon.dart';
import 'package:final_project/core/widgets/custom_button.dart';
import 'package:final_project/core/widgets/custom_payment_succefull_modal_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectAddressScreen extends StatelessWidget {
  const SelectAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiteConstantColor,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomAppBarContainerIcon(
                containerIcon: Icons.arrow_back, ontapFn: () {}),
            Text(
              'Select Address',
              textAlign: TextAlign.center,
              style: GoogleFonts.plusJakartaSans(
                color: AppColor.teaxtAppMainColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                height: 1.44.h,
              ),
            ),
            CustomAppBarContainerIcon(
                containerIcon: Icons.search, ontapFn: () {}),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: Column(
          children: [
            CustomAddressContainer(
                address: "Jl. Pangkur, Ngaglik, Sleman,\n Yogyakarta",
                locationTitle: "🏡 Home",
                isSelected: true,
                isDefault: true),
            CustomAddressContainer(
                address: "Jl. Pangkur, Ngaglik, Sleman,\n Yogyakarta",
                locationTitle: "🏢 Office",
                isSelected: false,
                isDefault: false),
            CustomAddressContainer(
                address: "Jl. Pangkur, Ngaglik, Sleman,\n Yogyakarta",
                locationTitle: "🏘️ Appartment",
                isSelected: false,
                isDefault: false),
            Spacer(),
            CustomButton(
              label: "Select Address",
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (tcontext) {
                      return CustomPaymentSuccefullModalSheet();
                    });
              },
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}
