// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../pages/sign_In/sign_in.dart';
import '../pages/splash_screen/splash.dart';

class Routes {
  static const String splashScreen = '/';
  static const String signinScreen = '/signin-screen';
  static const all = <String>{
    splashScreen,
    signinScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.signinScreen, page: SigninScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashScreen(),
        settings: data,
      );
    },
    SigninScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SigninScreen(),
        settings: data,
        fullscreenDialog: true,
      );
    },
  };
}
