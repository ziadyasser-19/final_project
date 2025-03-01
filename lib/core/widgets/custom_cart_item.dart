import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/feature/cart/data/model/product_card_model.dart';
import 'package:final_project/feature/cart/logic/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCartItem extends StatelessWidget {
  final ProductCartModel product;
  final VoidCallback deletefn;
  const CustomCartItem(
      {super.key, required this.product, required this.deletefn});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 16.h),
      child: Row(
        children: [
          Container(
            width: 93.52.w,
            height: 94.50.h,
            decoration: ShapeDecoration(
              image: DecorationImage(image: NetworkImage(product.image!)),
              color: Color(0xFFF3F6FB),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
          ),
          SizedBox(
            width: 16.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.title!.length > 21
                    ? '${product.title!.substring(0, product.title!.length - 21)}\n${product.title!.substring(product.title!.length - 21)}'
                    : product.title!,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: GoogleFonts.plusJakartaSans(
                  color: AppColor.teaxtAppMainColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.43.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 7.0.h),
                child: Text(
                  r"$ " + product.price.toString(),
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0xFF1B5EC9),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    height: 1.43.h,
                  ),
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 25.w,
                      height: 28.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFEAEAEA)),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                      child: Center(
                          child: Icon(
                        Icons.remove,
                        size: 20.sp,
                        color: const Color.fromARGB(255, 185, 187, 189),
                      )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                    child: Text(
                      product.quantity.toString(),
                      style: GoogleFonts.plusJakartaSans(
                        color: Color(0xFF303336),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.read<CartCubit>().addproductquantity(product.id!);
                    },
                    child: Container(
                      width: 25.w,
                      height: 28.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFEAEAEA)),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                      child: Center(
                          child: Icon(
                        Icons.add,
                        size: 20.sp,
                        color: AppColor.teaxtAppMainColor,
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  GestureDetector(
                    onTap: deletefn,
                    child: Container(
                      width: 24.w,
                      height: 24.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF3F6FB),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.remove_shopping_cart_rounded,
                          color: Colors.red,
                          size: 18.sp,
                        ),
                      ),
                    ),
                  
                  ),
                  SizedBox(
                    width: 40.w,
                  ),
                  Text(
                    'X' + product.quantity.toString(),
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xFF292A2E),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      height: 1.43.h,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
