import 'package:flutter_meditate/app/app.locator.dart';
import 'package:flutter_meditate/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnboardingViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void setCurrentIndex(int value) {
    _currentIndex = value;
    notifyListeners();
  }

  void navigateToLogin() {
    _navigationService.navigateTo(Routes.loginView);
  }
}
