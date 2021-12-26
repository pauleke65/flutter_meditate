import 'package:flutter_meditate/app/app.locator.dart';
import 'package:flutter_meditate/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashScreenViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  initSplScrn() async {
    await Future.delayed(const Duration(seconds: 2));

    _navigationService.replaceWith(Routes.onboardingView);
  }
}
