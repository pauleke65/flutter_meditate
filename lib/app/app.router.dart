// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../views/screens/onboarding/onboarding_view.dart';
import '../views/screens/splashscreen/splashscreen_view.dart';

class Routes {
  static const String splashScreenView = '/';
  static const String onboardingView = '/onboarding-view';
  static const all = <String>{
    splashScreenView,
    onboardingView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreenView, page: SplashScreenView),
    RouteDef(Routes.onboardingView, page: OnboardingView),
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
