// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../intro/widget/intro.dart';
import '../registration/log_in.dart';
import '../registration/sign_up.dart';
import '../sign_in/sign_in_page.dart';
import '../sign_in_with_email.dart/sign_in_with_email_screen.dart';
import '../splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String introScreen = '/intro-screen';
  static const String resigrationScreen = '/resigration-screen';
  static const String signUpScreen = '/sign-up-screen';
  static const String signInWithEmailLogIn = '/sign-in-with-email-log-in';
  static const all = <String>{
    splashPage,
    signInPage,
    introScreen,
    resigrationScreen,
    signUpScreen,
    signInWithEmailLogIn,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.introScreen, page: IntroScreen),
    RouteDef(Routes.resigrationScreen, page: ResigrationScreen),
    RouteDef(Routes.signUpScreen, page: SignUpScreen),
    RouteDef(Routes.signInWithEmailLogIn, page: SignInWithEmailLogIn),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    IntroScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => IntroScreen(),
        settings: data,
      );
    },
    ResigrationScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ResigrationScreen(),
        settings: data,
      );
    },
    SignUpScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SignUpScreen(),
        settings: data,
      );
    },
    SignInWithEmailLogIn: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SignInWithEmailLogIn(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);

  Future<dynamic> pushIntroScreen() => push<dynamic>(Routes.introScreen);

  Future<dynamic> pushResigrationScreen() =>
      push<dynamic>(Routes.resigrationScreen);

  Future<dynamic> pushSignUpScreen() => push<dynamic>(Routes.signUpScreen);

  Future<dynamic> pushSignInWithEmailLogIn() =>
      push<dynamic>(Routes.signInWithEmailLogIn);
}
