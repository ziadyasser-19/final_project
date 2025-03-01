import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/core/widgets/custom_wishlist_container.dart';
import 'package:final_project/feature/cart/logic/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit()..getWishlistData(),
      child: BlocConsumer<CartCubit, CartState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = context.read<CartCubit>();
          return Scaffold(
            appBar: AppBar(
              backgroundColor: AppColor.whiteConstantColor,
              automaticallyImplyLeading: false,
              title: Text(
                'Your Wishlist',
                textAlign: TextAlign.center,
                style: GoogleFonts.plusJakartaSans(
                  color: AppColor.teaxtAppMainColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.44.h,
                ),
              ),
            ),
            body: ConditionalBuilder(
                condition:
                    context.read<CartCubit>().wishListProducts.isNotEmpty,
                builder: (context) {
                  return GridView.builder(
                    padding: EdgeInsets.symmetric(vertical: 15.h),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 30.h,
                      childAspectRatio: 155.w / 221.h,
                    ),
                    itemCount: cubit.wishListProducts.length,
                    itemBuilder: (context, index) {
                      return CustomWishlistContainer(
                          product: cubit.wishListProducts[index]);
                    },
                  );
                },
                fallback: (context) {
                  return Center(
                    child: Text("No Wish List Added Yet"),
                  );
                }),
          );
        },
      ),
    );
  }
}
