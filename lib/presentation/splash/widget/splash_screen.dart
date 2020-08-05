import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kingof2odds/infrastructure/assets/appcolors.dart';
import 'package:kingof2odds/infrastructure/assets/imageassets.dart';
import 'package:kingof2odds/presentation/routes/router.gr.dart';
import 'package:splashscreen/splashscreen.dart';

class AppSplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: Center(
        child: SplashScreen(
          navigateAfterSeconds:
              ExtendedNavigator.of(context).push(Routes.signInPage),
          seconds: 9,
          backgroundColor: AppColors.bg,
          image: Image(
            image: AppImage.logo,
          ),
          loaderColor: AppColors.bg,
        ),
      ),
    );
  }
}
