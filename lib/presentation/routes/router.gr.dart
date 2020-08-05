// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../intro/intro.dart';
import '../registration/registration.dart';
import '../sign_in/sign_in_page.dart';
import '../splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String introScreen = '/intro-screen';
  static const String resigrationScreen = '/resigration-screen';
  static const all = <String>{
    splashPage,
    signInPage,
    introScreen,
    resigrationScreen,
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
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    IntroScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => IntroScreen(),
        settings: data,
      );
    },
    ResigrationScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ResigrationScreen(),
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
}
