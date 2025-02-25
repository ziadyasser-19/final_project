import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/core/widgets/custom_browse_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrowseScreen extends StatelessWidget {
  const BrowseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColor.whiteConstantColor,
          automaticallyImplyLeading: false,
          title: CustomBrowseFormfield()),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.0.h, horizontal: 10.w),
        child: SizedBox(
          height: 530.h,
          child: GridView.builder(
            padding: EdgeInsets.symmetric(vertical: 15.h),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 30.h,
                childAspectRatio: 155.w / 221.h),
            itemCount: 10,
            itemBuilder: (context, index) => Text("test"),
          ),
        ),
      ),
    );
  }
}
