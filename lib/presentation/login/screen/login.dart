import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/core/utils/routes.dart';
import 'package:flutter_projects/presentation/login/controller/cubit/cubit.dart';
import 'package:flutter_projects/presentation/login/controller/states/states.dart';
import 'package:flutter_projects/utils/resources/assets_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        alignment: Alignment.center,
        children: [

          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 430,
              height: 386,
              decoration: const BoxDecoration(
              ),
              child: Image.asset(ImageAssets.background, fit: BoxFit.fill,
                  colorBlendMode: BlendMode.srcOver,
                  color: const Color(0x7F0062BD)),
            ),
          ),

          Positioned(
            top: 193.h,
            child: Container(
              height: 360.h,
              decoration: ShapeDecoration(
                color: Colors.white,

                shape: RoundedRectangleBorder(

                  borderRadius: BorderRadius.circular(40.r),

                ),

                shadows: [
                  const BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 20,
                    offset: Offset(2, 5),
                    spreadRadius: 5,
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 27.h, horizontal: 46.w),
                child: BlocBuilder<LoginCubit, LoginStates>(

                  builder: (context, state) {
                    var cubit=LoginCubit.get(context);
                    return Column(
                      children: [
                        const Text(
                          'Welcome',
                          style: TextStyle(
                            color: Color(0xFF464646),
                            fontSize: 30,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 15.h,),
                        Container(
                          height: 3.h, width: 143.w, color: Colors.blue,),
                        SizedBox(height: 42.h,),

                        Container(
                          width: 282.w,
                          height: 48.h,
                          decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r)
                              )),
                          child: TextFormField(

                            decoration: InputDecoration(

                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.r)
                              ),
                              hintText:'Enter your Full Name',
                              hintStyle:  const TextStyle(
                                color: Color(0xFFB1B1B1),
                                fontSize: 10,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),

                            ),

                            controller: cubit.nameController,
                          ),
                        ),
                        SizedBox(height: 17.h,),
                        Container(
                          width: 282.w,
                          height: 48.h,
                          decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r)
                              )),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.r)
                              ),
                              hintText:'Enter your Phone Number',
                              hintStyle:  const TextStyle(
                                color: Color(0xFFB1B1B1),
                                fontSize: 10,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),

                            ),
                            controller: cubit.phoneController,
                          ),
                        ),
                        SizedBox(height: 32.h,),
                        GestureDetector(
                          onTap: () {
                            cubit.signUp(context);

                          },
                          child: Container(
                            width: 282.w,
                            height: 48.01.h,
                            decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                color: Colors.blue

                            ),
                            child: const Center(
                              child: Text("Login",style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),),
                            ),
                          ),
                        ),



                      ],
                    );
                  },
                ),
              ),
            ),),
          Positioned(
            top: 600.h,
            child: Column(
              children: [
                SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Container(
                    // width: 430.w,
                    // height: 90.h,
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60),
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // SizedBox(height: 540.h,),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal:30.w ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 165,
                                height: 1,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFF639FD7),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                              const Text(
                                'OR',
                                style: TextStyle(
                                  color: Color(0x9B0062BD),
                                  fontSize: 15,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Container(
                                width: 165,
                                height: 1,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFF639FD7),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 86.h,),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: EdgeInsets.all(7.r),
                              width: 52.w,
                              height: 52.h,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                shadows: [
                                  const BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 20,
                                    offset: Offset(2, 5),
                                    spreadRadius: 5,
                                  )
                                ],
                              ),
                              child: Image.asset(ImageAssets.facebookLogo),
                            ),
                            SizedBox(width: 28.w,),
                            Container(
                              padding: EdgeInsets.all(7.r),
                              width: 52.w,
                              height: 52.h,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                shadows: [
                                  const BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 20,
                                    offset: Offset(2, 5),
                                    spreadRadius: 5,
                                  )
                                ],
                              ),
                              child: Image.asset(ImageAssets.appleLogo),

                            ),
                            SizedBox(width: 28.w,),

                            Container(
                              padding: EdgeInsets.all(7.r),
                              width: 52.w,
                              height: 52.h,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                shadows: [
                                  const BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 20,
                                    offset: Offset(2, 5),
                                    spreadRadius: 5,
                                  )
                                ],
                              ),
                              child: Image.asset(ImageAssets.googleLogo),

                            ),

                          ],
                        )

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),





        ]
        ,
      )
      ,
    );
  }
}
