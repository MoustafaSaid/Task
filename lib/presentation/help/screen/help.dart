import 'package:flutter/material.dart';
import 'package:flutter_projects/utils/resources/assets_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math' as math;

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  final bool isopen=false;
  List<Item> data = List<Item>.generate(10, (index) {
    return Item(header: "index", text: "text");
  }).toList();
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
        child: Column(
          children: [
            SizedBox(height: 50.h,),
            SizedBox(
              width: 281,
              height: 38,
              child: Text(
                'Help',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 65.h,),

            ListView.separated(
                shrinkWrap: true,

                itemBuilder: (context, index) => Container(
margin: EdgeInsets.symmetric(horizontal: 17.w),
padding: EdgeInsets.only(left: 17.w,right: 18.w,top: 13.h,bottom: 8.h),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 8,
                        offset: Offset(2, 2),
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: Column(
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Account",style: TextStyle(
                          color: Color(0xFF0062BD),
                          fontSize: 17,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),),
                        InkWell(
                            onTap: () {
                              setState(() {
                                data[index].isExpanded==false?data[index].isExpanded=true:data[index].isExpanded=false;
                                // isopen=!isopen;
                              });
                            },
                            child: Container(
                              // margin: EdgeInsets.symmetric(horizontal: 14.w,vertical: 18.h),
                              child: SvgPicture.asset(IconsAssets.facebookIC,),
                            ))
                      ],
                    ),
                    data[index].isExpanded==true?Container(
                        // height: 77.h,
                        child: Column(
                          children: [
                            SizedBox(height: 23.h,),

                            Text("You need to create an account to use the application but you can delete your account any time you want",style: TextStyle(
                              color: Color(0xFF464646),
                              fontSize: 17,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),),
                          ],
                        )):Container()
                  ],

                ),), separatorBuilder: (context, index) => SizedBox(height: 27.h,), itemCount: 10)
          ],
        ),
      ),
    ),
    );
  }
}


class Item {
  String header;
  String text;
  bool isExpanded;

  Item({
    required this.header, required this.text, this.isExpanded = false

  });
}