import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/presentation/help/screen/help.dart';
import 'package:flutter_projects/presentation/home/screen/home.dart';
import 'package:flutter_projects/presentation/login/screen/login.dart';
import 'package:flutter_projects/presentation/product_details/controller/cubit/cubit.dart';
import 'package:flutter_projects/presentation/product_details/screen/product_details.dart';
import 'package:flutter_projects/presentation/splach/screen/splah.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'presentation/verification/screen/verification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

      ),
      debugShowCheckedModeBanner: false,
      home: ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,

        builder: (BuildContext context, Widget? child) {
          return BlocProvider(
            create: (context) => ProductCubit(),
            child: ProductScreen(),
          );
        },
      ),
    );
  }
}

