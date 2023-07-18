
import 'package:flutter/material.dart';
import 'package:flutter_projects/presentation/help/screen/help.dart';
import 'package:flutter_projects/presentation/home/screen/home.dart';
import 'package:flutter_projects/presentation/login/screen/login.dart';
import 'package:flutter_projects/presentation/product_details/screen/product_details.dart';
import 'package:flutter_projects/presentation/splach/screen/splah.dart';
import 'package:flutter_projects/presentation/verification/screen/verification.dart';

class RoutesConstant {
  static const landing = "/";
  static const splash = "/Splash";
  static const login = "/login";
  static const verify = "/verify";
  static const home = "/home";
  static const productDetails = "/productDetails";
  static const help = "/help";
 }

class RouteManager {
  static Route<dynamic> getRoute(RouteSettings settings) {
    late Widget page;
    switch (settings.name) {
      case RoutesConstant.splash:
        page = const SplashScreen();
        break;
      case RoutesConstant.login:
        page = const LoginScreen();
        break;

      case RoutesConstant.verify:
        page = const VerificationScreen();
        break;
      case RoutesConstant.home:
        page = const HomeScreen();
        break;
      case RoutesConstant.productDetails:
        page = const ProductScreen();
        break;
      case RoutesConstant.help:
        page = const HelpScreen();
        break;


      default:
        throw Exception('Unknown route: ${settings.name}');
    }

    return MaterialPageRoute<dynamic>(
      builder: (context) {
        return page;
      },
      settings: settings,
    );
  }
}