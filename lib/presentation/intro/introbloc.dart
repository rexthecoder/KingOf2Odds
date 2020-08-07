import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kingof2odds/application/auth/auth_bloc.dart';
import 'package:kingof2odds/infrastructure/assets/appcolors.dart';
import 'package:kingof2odds/infrastructure/assets/imageassets.dart';
import 'package:kingof2odds/presentation/intro/widget/intro.dart';
import 'package:kingof2odds/presentation/routes/router.gr.dart';

class IntroBloc extends StatefulWidget {
  @override
  _IntroBlocState createState() => _IntroBlocState();
}

class _IntroBlocState extends State<IntroBloc> {
  @override
  Widget build(BuildContext context) {
return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) =>
              ExtendedNavigator.of(context).push(Routes.signInPage),
          unauthenticated: (_) =>
              ExtendedNavigator.of(context).push(Routes.introScreen),
        );
      },
      child: Scaffold(
        backgroundColor: AppColors.bg,
        body: Center(
          child: Image(
            height: 200,
            image: AppImage.logo,),
        ),
      ),
    );
  }
}