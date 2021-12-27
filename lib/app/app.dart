import 'package:flutter_meditate/views/screens/login/login_view.dart';
import 'package:flutter_meditate/views/screens/onboarding/onboarding_view.dart';
import 'package:flutter_meditate/views/screens/signup/signup_view.dart';
import 'package:flutter_meditate/views/screens/splashscreen/splashscreen_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashScreenView, initial: true),
    MaterialRoute(page: OnboardingView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: SignUpView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
