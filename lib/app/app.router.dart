// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../views/screens/home/home_view.dart';
import '../views/screens/login/login_view.dart';
import '../views/screens/onboarding/onboarding_view.dart';
import '../views/screens/signup/signup_view.dart';
import '../views/screens/splashscreen/splashscreen_view.dart';

class Routes {
  static const String splashScreenView = '/';
  static const String onboardingView = '/onboarding-view';
  static const String loginView = '/login-view';
  static const String signUpView = '/sign-up-view';
  static const String homeView = '/home-view';
  static const all = <String>{
    splashScreenView,
    onboardingView,
    loginView,
    signUpView,
    homeView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreenView, page: SplashScreenView),
    RouteDef(Routes.onboardingView, page: OnboardingView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.signUpView, page: SignUpView),
    RouteDef(Routes.homeView, page: HomeView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    SplashScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SplashScreenView(),
        settings: data,
      );
    },
    OnboardingView: (data) {
      var args = data.getArgs<OnboardingViewArguments>(
        orElse: () => OnboardingViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnboardingView(key: args.key),
        settings: data,
      );
    },
    LoginView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const LoginView(),
        settings: data,
      );
    },
    SignUpView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SignUpView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// OnboardingView arguments holder class
class OnboardingViewArguments {
  final Key? key;
  OnboardingViewArguments({this.key});
}
