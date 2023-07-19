import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/presentation/verification/controller/cubit/cubit.dart';
import 'package:flutter_projects/presentation/verification/controller/states/states.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 47.w),
              // width: double.infinity,
              // height: 420,
              decoration: const BoxDecoration(

                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.center,
                    colors: [Color(0xd80062bd), Color(0x000062bd)],
                  )),
              child: Column(

                children: [

                  SizedBox(
                    height: 50.h,
                  ),
                  const Text("verify number", style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                  ),
                  SizedBox(
                    height: 138.h,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 70,
                          height: 80,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
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
                          child: TextFormField(
controller: VerifyCubit.get(context).firstNumber,
                            decoration: InputDecoration(

                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(15)
                                )
                            ),
                          ),

                        ),
                        Container(
                          width: 70,
                          height: 80,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
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
                          child: TextFormField(
                            controller: VerifyCubit.get(context).secondNumber,

                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(15)
                                )
                            ),
                          ),

                        ),
                        Container(
                          width: 70,
                          height: 80,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
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
                          child: TextFormField(
                            controller: VerifyCubit.get(context).thirdNumber,

                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(15)
                                )
                            ),
                          ),

                        ),
                        Container(
                          width: 70,
                          height: 80,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
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
                          child: Center(
                            child: TextFormField(
                              controller: VerifyCubit.get(context).fourthNumber,

                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(15)
                                  )
                              ),
                            ),
                          ),
                        ),
                      ]),
                  SizedBox(
                    height: 90.h,
                  ),
                  const Text("resend code", style: TextStyle(
                    color: Color(0xFF0062BD),
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),),
                  SizedBox(
                    height: 78.h,
                  ),

                ],
              )),

          Positioned(
            top: 480.h,
            child: BlocBuilder<VerifyCubit, VerifyStates>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () {
                    VerifyCubit.get(context).sendOtp(context);
                    print("object");
                  },
                  child: Container(
                    width: 343.w,
                    height: 57.h,
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        // begin: Alignment(0, 5.00),
                        end: Alignment(5, 0),
                        colors: [Colors.blue, Colors.white],),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Center(child: const Text(
                      "Verify", style: TextStyle(color: Colors.white,),)),
                  ),
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}
