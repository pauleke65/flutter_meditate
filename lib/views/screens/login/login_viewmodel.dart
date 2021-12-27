import 'package:flutter_meditate/app/app.locator.dart';
import 'package:flutter_meditate/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToSignUp() {
    _navigationService.navigateTo(Routes.signUpView);
  }

  void navigateToHome() {
    _navigationService.navigateTo(Routes.homeView);
  }
}
