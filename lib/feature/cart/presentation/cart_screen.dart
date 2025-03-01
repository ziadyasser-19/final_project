import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/core/widgets/custom_app_bar_container_icon.dart';
import 'package:final_project/core/widgets/custom_button.dart';
import 'package:final_project/core/widgets/custom_cart_item.dart';
import 'package:final_project/core/widgets/custom_payment_method_container.dart';
import 'package:final_project/core/widgets/custom_payment_summary.dart';
import 'package:final_project/core/widgets/custom_shipping_container.dart';
import 'package:final_project/core/widgets/custom_top_orders_container.dart';
import 'package:final_project/feature/cart/logic/cubit/cart_cubit.dart';
import 'package:final_project/feature/cart/presentation/select_address.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit()..getCartData(),
      child: BlocConsumer<CartCubit, CartState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
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
                    'Orders',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.plusJakartaSans(
                      color: AppColor.teaxtAppMainColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.44.h,
                    ),
                  ),
                  Container(
                    width: 50.w,
                  )
                ],
              ),
            ),
            body: ConditionalBuilder(
                condition: context.read<CartCubit>().products.isNotEmpty,
                builder: (context) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTopOrdersContainer(),
                        SizedBox(
                          height: 13.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                          child: Text(
                            'Items',
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColor.teaxtAppMainColor,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              height: 1.44.h,
                            ),
                          ),
                        ),
                        Container(
                          width: 375.w,
                          height: 4.h,
                          decoration: BoxDecoration(color: Color(0xFFF0F1F5)),
                        ),
                        SizedBox(
                          height: 250.h,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount:
                                context.watch<CartCubit>().products.length,
                            itemBuilder: (context, index) {
                              return CustomCartItem(
                                product:
                                    context.read<CartCubit>().products[index],
                                deletefn: () {
                                  context.read<CartCubit>().deleteProduct(
                                      context
                                          .read<CartCubit>()
                                          .products[index]
                                          .id!,
                                      index);
                                },
                              );
                            },
                          ),
                        ),
                        Container(
                          width: 375.w,
                          height: 4.h,
                          decoration: BoxDecoration(color: Color(0xFFF0F1F5)),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0.w, vertical: 25.h),
                          child: Text(
                            'Shipping',
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColor.teaxtAppMainColor,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              height: 1.44.h,
                            ),
                          ),
                        ),
                        CustomShippingContainer(),
                        SizedBox(
                          height: 30.h,
                        ),
                        Container(
                          width: 375.w,
                          height: 4.h,
                          decoration: BoxDecoration(color: Color(0xFFF0F1F5)),
                        ),
                        CustomPaymentSummary(),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          child: Container(
                            width: 375.w,
                            height: 4.h,
                            decoration: BoxDecoration(color: Color(0xFFF0F1F5)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0.w, vertical: 5.h),
                          child: Text(
                            'Payment Method',
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColor.teaxtAppMainColor,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              height: 1.44.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                          child: CustomPaymentMethodContainer(
                              imageAssetsUrl: "assets/imgs/Gpay.png",
                              cardNumber: "**** **** 0783 7873",
                              methodName: "Via Gpay"),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 30.0.h),
                          child: Center(
                              child: CustomButton(
                                  label:
                                      "Pay \$${context.read<CartCubit>().totalPrice.round() + 2}",
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SelectAddressScreen()));
                                  })),
                        )
                      ],
                    ),
                  );
                },
                fallback: (context) {
                  return Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 44.h,
                        ),
                        SizedBox(
                          height: 270.h,
                          width: 270.w,
                          child: Image.asset("assets/imgs/cart.png"),
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        Center(
                          child: Text(
                            'Your cart is an empty!',
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColor.teaxtAppMainColor,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              height: 1.40.h,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Text(
                          "Looks like you haven't added anything \nto your cart yet",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.plusJakartaSans(
                            color: AppColor.secondarytextColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            height: 1.8.h,
                          ),
                        )
                      ],
                    ),
                  );
                }),
          );
        },
      ),
    );
  }
}
