import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/core/widgets/custom_alert_dialog.dart';
import 'package:final_project/feature/cart/data/model/product_card_model.dart';
import 'package:final_project/feature/cart/logic/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomWishlistContainer extends StatelessWidget {
  final ProductCartModel product;
  const CustomWishlistContainer({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 221.h,
        width: 155.w,
        margin: EdgeInsets.symmetric(horizontal: 15.w),
        decoration: BoxDecoration(
          color: AppColor.whiteConstantColor,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              children: [
                // Image
                Container(
                  height: 108.h,
                  width: 123.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(product.image!),
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                // Product Name
                Text(
                  product.title!,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColor.teaxtAppMainColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.43.h,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 10.h),
                // Price
                Text(
                  r'$' + product.price.toString(),
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0xFF1B5EC9),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    height: 1.50.h,
                  ),
                ),

                IconButton(
                    onPressed: () {
                      context.read<CartCubit>().deleteWishlistProduct(
                          product.id!,
                          context
                              .read<CartCubit>()
                              .wishListProducts
                              .indexOf(product));
                              showDialog(
                    context: context,
                    builder: (context) => CustomAlertDialog(dialogmessage: 'Removed from favorite successfully ✅', dialogicon: Icon(Icons.cancel_presentation_sharp, color: Colors.red, size: 40.sp),),
                  );
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.pink,
                      size: 22.sp,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
