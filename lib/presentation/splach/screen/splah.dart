import 'package:flutter/material.dart';
import 'package:flutter_projects/utils/resources/assets_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child:
          Image.asset(ImageAssets.splashLogo),

      ),
    );
  }
}
