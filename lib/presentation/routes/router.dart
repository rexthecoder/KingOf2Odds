import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter/material.dart';
import 'package:kingof2odds/presentation/intro/widget/intro.dart';
import 'package:kingof2odds/presentation/registration/log_in.dart';
import 'package:kingof2odds/presentation/registration/sign_up.dart';
import 'package:kingof2odds/presentation/sign_in/sign_in_page.dart';
import 'package:kingof2odds/presentation/sign_in_with_email.dart/sign_in_with_email_screen.dart';
import 'package:kingof2odds/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    CupertinoRoute(page: SplashPage, initial: true),
    CupertinoRoute(page: SignInPage),
    CupertinoRoute(page: IntroScreen),
    CupertinoRoute(page: ResigrationScreen),
    CupertinoRoute(page: SignUpScreen),
    CupertinoRoute(page: SignInWithEmailLogIn)
  ],
)
class $Router {}
