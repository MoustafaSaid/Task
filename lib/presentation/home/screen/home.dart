import 'package:flutter/material.dart';
import 'package:flutter_projects/utils/resources/assets_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              // begin: Alignment(-3, 0.00),
              // end: Alignment(5, 0),
              // stops: [.25,.25],
              // begin: Alignment.topCenter,
              // end: Alignment.center,
              transform: GradientRotation(math.pi / 2),
              // stops: [-.91,3],
              colors: [Colors.blue, Colors.white],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Row(
                  children: [
                    Container(
                      height: 50.h,
                      width: 324.w,
                      decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10.r))),
                      child: TextFormField(
                        enabled: false,
                        decoration: InputDecoration(
                            suffixIcon: Padding(
                              padding: EdgeInsets.only(
                                  right: 17.w, top: 13.h, bottom: 13.h),
                              child: SvgPicture.asset(IconsAssets.searchIc),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r))),
                      ),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Container(
                      height: 50.h,
                      width: 50.w,
                      padding: EdgeInsets.all(16.r),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.r)),
                      child: SvgPicture.asset(IconsAssets.binIc),
                    )
                  ],
                ),
                SizedBox(
                  height: 22.h,
                ),
                Stack(
                  // alignment: Alignment.topCenter,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r)),
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.asset(
                            ImageAssets.productDouble,
                          )),
                    ),
                    Positioned(
                        bottom: 5.h,
                        // left: 12.w,

                        child: Container(
                          margin: EdgeInsets.only(left: 22.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "New Release",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Acer Predidtior",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 14.h,
                ),
                Container(
                  height: 52.h,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Container(
                            width: 129.w,
                            height: 52.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 12.w, vertical: 6.h),
                            decoration: ShapeDecoration(
                              color: Color(0xFF0062BD),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 8,
                                  offset: Offset(2, 2),
                                  spreadRadius: 4,
                                )
                              ],
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 40.w,
                                  height: 40.h,
                                  padding: EdgeInsets.all(6.r),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x3F000000),
                                        blurRadius: 8,
                                        offset: Offset(2, 2),
                                        spreadRadius: 4,
                                      )
                                    ],
                                  ),
                                  child: SvgPicture.asset(
                                    IconsAssets.razerLogoIC,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(
                                  width: 13.w,
                                ),
                                Text(
                                  "All",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                      separatorBuilder: (context, index) => SizedBox(
                            width: 25.w,
                          ),
                      itemCount: 10),
                ),
                SizedBox(
                  height: 23.h,
                ),
                Row(
                  children: [],
                ),
                Stack(children: [
                  Container(
                      // color: Colors.deepOrange,
                      width: 180.w,
                      // height: 72.h,
                      child: Text(
                        "Recomended for You",
                        style: TextStyle(fontSize: 30.sp),
                      )),
                  Wrap(
                      children: List.generate(
                    10,
                    (index) {
                      return Transform.translate(
                        offset: Offset(0.0, index.isEven ? 80 : 0.0),
                        child: Container(
                          width: 168.w,
                          margin: EdgeInsets.only(right: 15.w, bottom: 16.h,top: 10.h),
                          height: 239.h,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 8,
                                offset: Offset(2, 2),
                                spreadRadius: 5,
                              )
                            ],
                          ),
                          child: Stack(
                            // alignment: Alignment.t,
                            children: [
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  width: 40.w,
                                  height: 40.h,
                                  decoration: ShapeDecoration(
                                    color: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.r),
                                        bottomRight: Radius.circular(20.r),
                                      ),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 18.h,
                                        left: 11.w,
                                        bottom: 7.h,
                                        right: 14.w),
                                    child: SvgPicture.asset(IconsAssets.addIc),
                                  ),
                                ),
                              ),
                              Container(
                                width: 170.w,
                                height: 133.h,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shadows: [
                                    BoxShadow(
                                      color: Color(0x3F000000),
                                      blurRadius: 15,
                                      offset: Offset(2, 5),
                                      spreadRadius: 5,
                                    )
                                  ],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20.r),
                                      bottomRight: Radius.circular(20.r),
                                    ),
                                  ),
                                ),
                                padding: EdgeInsets.all(8.r),
                                child: Image.asset(ImageAssets.productSingle),
                              ),
                              Positioned(
                                bottom: 15.h,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // SizedBox(height: 50.h,),
                                      Text("data"),
                                      Text("data"),
                                      SizedBox(
                                        height: 16.h,
                                      ),
                                      Text("data"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ))
                ]),
                SizedBox(height: 100.h,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
