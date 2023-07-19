import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/presentation/home/controller/cubit/cubit.dart';
import 'package:flutter_projects/presentation/home/controller/states/states.dart';
import 'package:flutter_projects/presentation/product_details/controller/cubit/cubit.dart';
import 'package:flutter_projects/presentation/product_details/controller/states/states.dart';
import 'package:flutter_projects/utils/resources/assets_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

import 'package:flutter_svg/flutter_svg.dart';

class ProductScreen extends StatelessWidget {
   ProductScreen({this.index=0});
int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
              transform: GradientRotation(math.pi / 2),
              // stops: [-.91,3],
              colors: [Colors.blue, Colors.white],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(23.r),
            child: BlocBuilder<HomeCubit, HomeStates>(

              builder: (context, state) {
                var cubit=HomeCubit.get(context);
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50.h,),
                    Container(
                      width: 50.w,
                      height: 50.h,
                      padding: EdgeInsets.only(left: 18.w, right: 18.w),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 5,
                            offset: Offset(2, 2),
                            spreadRadius: 5,
                          )
                        ],
                      ),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios)),
                    ),
                    SizedBox(height: 16.h,),

                     Text(
                      cubit.responseModel!.products[index].name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                     Text(
                      cubit.responseModel!.products[index].type,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Container(
                      width: 364,
                      height: 300,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x33000000),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                            spreadRadius: 5,
                          )
                        ],
                      ),
                      child: SizedBox(
                        width: 277,
                        height: 220,
                        child: Image.asset(ImageAssets.productSingle),
                      ),
                    ),
                    SizedBox(
                      height: 29.h,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SizedBox(
                        height: 120.h,
                        // padding: EdgeInsets.all(8),
                        child: Row(
                          children: List.generate(
                              10,
                                  (index) =>
                                  Container(
                                    width: 100.h,
                                    height: 100.w,
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 14.w),
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            20.r),
                                      ),
                                      shadows: [
                                        BoxShadow(
                                          color: const Color(0x33000000),
                                          blurRadius: 2.r,
                                          offset: const Offset(0, 2),
                                          spreadRadius: 5,
                                        )
                                      ],
                                    ),
                                    child: Image.network(
                                        cubit.responseModel!.products[index].image),
                                  )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Container(
                      width: 364,
                      height: 65,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x33000000),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                            spreadRadius: 5,
                          )
                        ],
                      ),
                      child: Container(
                        padding:
                        const EdgeInsets.only(
                            left: 9, right: 21, top: 5, bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFF3F3F3),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0x33000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 0),
                                    spreadRadius: 2,
                                  )
                                ],
                              ),
                              child: Image.asset(ImageAssets.razerLogo),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 9, right: 21, top: 9, bottom: 5),
                              child:  Column(
                                children: [
                                  SizedBox(
                                    width: 160,
                                    child: Text(
                                      cubit.responseModel!.products[index].company,
                                      style: TextStyle(
                                        color: Color(0xFF464646),
                                        fontSize: 17,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 67,
                                    child: Text(
                                      'View Store',
                                      style: TextStyle(
                                        color: Color(0xFFB1B1B1),
                                        fontSize: 12,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 30.w,
                              height: 30.h,
                              padding: EdgeInsets.all(6.r),
                              decoration: ShapeDecoration(
                                color: const Color(0xFFF3F3F3),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0x33000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                    spreadRadius: 1,
                                  )
                                ],
                              ),
                              child: SvgPicture.asset(IconsAssets.arrowRightIc),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      children: [
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 44,
                              child: Text(
                                'Price',
                                style: TextStyle(
                                  color: Color(0xFFB1B1B1),
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 113,
                              child: Text(
                                cubit.responseModel!.products[index].price,
                                style: TextStyle(
                                  color: Color(0xFF464646),
                                  fontSize: 18,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 43.w,
                        ),
                        Container(
                          width: 208,
                          height: 44,
                          decoration: ShapeDecoration(
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: const[
                              BoxShadow(
                                color: Color(0x33000000),
                                blurRadius: 4,
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              'Add To Cart',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 37.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 58.w),
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFB1B1B1),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    // BlocBuilder<ProductCubit, ProductStates>(
                    //
                    //   builder: (context, state) {
                    //     var cubit = ProductCubit.get(context);
                    //
                    //     return Column(
                    //       children: [
                    //         Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: [
                    //             GestureDetector(
                    //               onTap: () {
                    //                 cubit.changeIndex(0);
                    //               },
                    //               child: Column(
                    //                 children: [
                    //                   const SizedBox(
                    //                     width: 85,
                    //                     child: Text(
                    //                       'Overview',
                    //                       style: TextStyle(
                    //                         color: Color(0xFF464646),
                    //                         fontSize: 18,
                    //                         fontFamily: 'Inter',
                    //                         fontWeight: FontWeight.w400,
                    //                       ),
                    //                     ),
                    //                   ),
                    //                   SizedBox(height: 7.h,),
                    //                   cubit.currentIndex == 0 ? Container(
                    //                     width: 8.w,
                    //                     height: 8.h,
                    //                     decoration: const ShapeDecoration(
                    //                       color: Colors.blue,
                    //
                    //                       shape: OvalBorder(),
                    //                     ),
                    //                   ) : Container()
                    //
                    //                 ],
                    //               ),
                    //             ),
                    //             GestureDetector(
                    //               onTap: () {
                    //                 cubit.changeIndex(1);
                    //               },
                    //               child: Column(
                    //                 children: [
                    //                   const SizedBox(
                    //                     width: 111,
                    //                     child: Text(
                    //                       'Spesification',
                    //                       style: TextStyle(
                    //                         color: Color(0xFFB1B1B1),
                    //                         fontSize: 18,
                    //                         fontFamily: 'Inter',
                    //                         fontWeight: FontWeight.w400,
                    //                       ),
                    //                     ),
                    //                   ),
                    //                   SizedBox(height: 7.h,),
                    //                   // SizedBox(height: 7.h,),
                    //                   cubit.currentIndex == 1 ? Container(
                    //                     width: 8.w,
                    //                     height: 8.h,
                    //                     decoration: const ShapeDecoration(
                    //                       color: Colors.blue,
                    //
                    //                       shape: OvalBorder(),
                    //                     ),
                    //                   ) : Container()
                    //
                    //
                    //                 ],
                    //               ),
                    //             ),
                    //             GestureDetector(
                    //               onTap: () {
                    //                 cubit.changeIndex(2);
                    //               },
                    //               child: Column(
                    //                 children: [
                    //                   const SizedBox(
                    //                     width: 64,
                    //                     child: Text(
                    //                       'Review',
                    //                       style: TextStyle(
                    //                         color: Color(0xFFB1B1B1),
                    //                         fontSize: 18,
                    //                         fontFamily: 'Inter',
                    //                         fontWeight: FontWeight.w400,
                    //                       ),
                    //                     ),
                    //                   ),
                    //                   SizedBox(height: 7.h,),
                    //                   cubit.currentIndex == 2 ? Container(
                    //                     width: 8.w,
                    //                     height: 8.h,
                    //                     decoration: const ShapeDecoration(
                    //                       color: Colors.blue,
                    //
                    //                       shape: OvalBorder(),
                    //                     ),
                    //                   ) : Container()
                    //
                    //
                    //                 ],
                    //               ),
                    //             ),
                    //
                    //
                    //           ],
                    //         ),
                    //         SizedBox(
                    //           height: 35.h,
                    //         ),
                    //         SizedBox(
                    //           width: 361.w,
                    //           height: 392.h,
                    //           child: const Text(
                    //             'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. \nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. ',
                    //             style: TextStyle(
                    //               color: Color(0xFFB1B1B1),
                    //               fontSize: 16,
                    //               fontFamily: 'Inter',
                    //               fontWeight: FontWeight.w400,
                    //             ),
                    //           ),
                    //         )
                    //       ],
                    //     );
                    //   },
                    // )


                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
