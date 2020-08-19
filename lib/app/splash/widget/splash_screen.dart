
import 'package:flutter/material.dart';
import 'package:kingof2odds/app/intro/widget/intro.dart';
import 'package:kingof2odds/constants/assets/appcolors.dart';
import 'package:splashscreen/splashscreen.dart';

class AppSplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.bg,
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.fromLTRB(0, 200, 0, 0),
        child: Center(
          child: SplashScreen(
            image: Image.asset("assets/images/logo.png"),
            seconds: 6,
            backgroundColor: AppColors.bg,
            //  Here is where navigation start 
            navigateAfterSeconds: IntroScreen(),
            photoSize: 100,
            loaderColor: AppColors.bg,
          ),
        ),
      ),
    );
  }
}
