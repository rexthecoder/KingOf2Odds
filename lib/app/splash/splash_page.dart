
import 'package:flutter/material.dart';

import 'widget/splash_screen.dart';
// import 'package:kingof2odds/presentation/splash/widget/splash_screen.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: AppSplashScreen());
    // return BlocListener<AuthBloc, AuthState>(
    //   listener: (context, state) {
    //     state.map(
    //       initial: (_) {},
    //       authenticated: (_) =>
    //           ExtendedNavigator.of(context).push(Routes.signInPage),
    //       unauthenticated: (_) =>
    //           ExtendedNavigator.of(context).push(Routes.introScreen),
    //     );
    //   },
    //   child: AppSplashScreen()
    // );
  }
}
