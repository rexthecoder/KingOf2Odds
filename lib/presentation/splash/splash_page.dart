import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kingof2odds/application/auth/auth_bloc.dart';
import 'package:kingof2odds/presentation/routes/router.gr.dart';
import 'package:kingof2odds/presentation/splash/widget/splash_screen.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) =>
              ExtendedNavigator.of(context).push(Routes.signInPage),
          unauthenticated: (_) =>
              ExtendedNavigator.of(context).push(Routes.signInPage),
        );
      },
      child: AppSplashScreen()
    );
  }
}
