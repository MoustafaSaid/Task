import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/core/services/service_locator.dart';
import 'package:flutter_projects/core/utils/routes.dart';
import 'package:flutter_projects/presentation/help/screen/help.dart';
import 'package:flutter_projects/presentation/home/controller/cubit/cubit.dart';
import 'package:flutter_projects/presentation/home/screen/home.dart';
import 'package:flutter_projects/presentation/login/controller/cubit/cubit.dart';
import 'package:flutter_projects/presentation/login/screen/login.dart';
import 'package:flutter_projects/presentation/product_details/controller/cubit/cubit.dart';
import 'package:flutter_projects/presentation/product_details/screen/product_details.dart';
import 'package:flutter_projects/presentation/splach/screen/splah.dart';
import 'package:flutter_projects/presentation/verification/controller/cubit/cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'presentation/verification/screen/verification.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  initGetIt();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: RouteManager.getRoute,
      theme: ThemeData(
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.blue
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

      ),
      debugShowCheckedModeBanner: false,
      home: ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,

        builder: (BuildContext context, Widget? child) {
          return MultiBlocProvider(
              providers: [

                BlocProvider<LoginCubit>( create: (context) => sl<LoginCubit>(),
                  // child: LoginScreen(),
                ),    BlocProvider<VerifyCubit>( create: (context) => sl<VerifyCubit>(),
                  // child: VerificationScreen(),
                ),
                BlocProvider<HomeCubit>( create: (context) => sl<HomeCubit>()..getProducts(),
                  // child: HomeScreen(),
                ),
                BlocProvider<ProductCubit>( create: (context) => sl<ProductCubit>(),
                  child:ProductScreen() ,
                ),
              ],

              child: HomeScreen());
        },
      ),
    );
  }
}

