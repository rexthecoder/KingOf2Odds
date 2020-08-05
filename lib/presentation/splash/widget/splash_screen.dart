import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kingof2odds/infrastructure/assets/appcolors.dart';
import 'package:kingof2odds/presentation/routes/router.gr.dart';
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
            seconds: 500,
            backgroundColor: AppColors.bg,
            navigateAfterSeconds:
                ExtendedNavigator.of(context).push(Routes.introScreen),
            photoSize: 100,
            loaderColor: AppColors.bg,
          ),
        ),
      ),
    );
  }
}
