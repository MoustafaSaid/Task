import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
         Positioned(
           top: 450.h,
            child: Container(
              width: 343.w,
              height: 57.h,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  // begin: Alignment(0, 5.00),
                  end: Alignment(5, 0),
                  colors: [Colors.blue,Colors.white], ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: Center(child: const Text("Verify",style: TextStyle(color: Colors.white,),)),
            ),
          ),

          Container(
              padding: EdgeInsets.symmetric(horizontal: 47.w),
              // width: double.infinity,
              // height: 420,
              decoration: const BoxDecoration(
                  // gradient: LinearGradient(
                  //   begin: Alignment(0.00, -1.00),
                  //   end: Alignment(0, 1),
                  //   colors: [Color(0xD80062BD), Color(0x000062BD)],
                  // ),
                  //   gradient: LinearGradient(
                  //     begin: Alignment(1.00, -1.00),
                  //     end: Alignment(0, 0.1),
                  //     colors: [Color(0xD80062BD), Color(0x000062BD)],
                  //
                  // ),
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [Color(0xd80062bd), Color(0x000062bd)],
              )),
              child: Expanded(
                child: Column(

                  children: [

                    SizedBox(
                      height: 62.h,
                    ),
                    const Text("verify number"),
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
                          ),
                        ]),
                    SizedBox(
                      height: 90.h,
                    ),
                    const Text("resend code"),
                    SizedBox(
                      height: 78.h,
                    ),

                  ],
                ),
              )),
        ],
      ),
    );
  }
}
