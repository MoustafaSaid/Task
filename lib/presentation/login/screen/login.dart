import 'package:flutter/material.dart';
import 'package:flutter_projects/utils/resources/assets_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      Stack(
        alignment: Alignment.topCenter,
        children: [



          Container(
            width: 430,
            height: 386,
            decoration: BoxDecoration(
            ),
            child:Image.asset(ImageAssets.background,fit: BoxFit.fill,colorBlendMode:BlendMode.srcOver, color: Color(0x7F0062BD) ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            // bottom: 0,
            child: Container(
              // width: 430.w,
              height: 617.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 193.h,
            child: Container(
              height: 345.h,
              decoration: ShapeDecoration(
                  color: Colors.white,

                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(40.r),

                  ),

                  shadows: [
                  BoxShadow(
                  color: Color(0x3F000000),
              blurRadius: 20,
              offset: Offset(2, 5),
              spreadRadius: 5,
            )],
              ),
              child:Padding(
                padding:  EdgeInsets.symmetric(vertical: 27.h,horizontal: 46.w),
                child: Column(
                  children: [
                    Text("data"),
                    SizedBox(height: 15.h,),
                    Container(height: 3.h,width:143.w,color: Colors.blue,),
                    SizedBox(height: 42.h,),

                    Container(
                      width: 282.w,
                      height: 48.h,
                      decoration: ShapeDecoration(shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r)
                      )),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r)
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 17.h,),
                    Container(
                      width: 282.w,
                      height: 48.h,
                      decoration: ShapeDecoration(shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r)
                      )),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r)
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 32.h,),
                    // Container(
                    //   height: 48.h,
                    //   width: 282.w,
                    //   decoration: BoxDecoration(
                    //       gradient: LinearGradient(
                    //         begin: Alignment(1.00, 0.00),
                    //         end: Alignment(-1, 0),
                    //         colors: [Color(0xFF0062BD), Color(0x7F0062BD), Color(0x440062BD)],
                    //       ),
                    //
                    //
                    //
                    //           borderRadius: BorderRadius.circular(50.r)
                    //       ),
                    //   child: ElevatedButton(
                    //
                    //       style: ElevatedButton.styleFrom(
                    //         shape: RoundedRectangleBorder(
                    //
                    //         ),
                    //
                    //       ),
                    //       onPressed: () {
                    //
                    //   }, child: Text("Login")),
                    // )
                    Container(
                      width: 282.w,
                      height: 48.01.h,
                      foregroundDecoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),

                        gradient: LinearGradient(
                          begin: Alignment(1.00, 0.00),
                          end: Alignment(-1, 0),
                          colors: [Color(0xFF0062BD), Color(0x7F0062BD), Color(0x440062BD)],
                        ),

                      ),

                      child: ElevatedButton(
                        onPressed: () {

                        },
                        child: Text("Login"),
                      ),
                    )


                  ],
                ),
              ) ,
            ),
          ),


        ],
      ),
    );
  }
}
