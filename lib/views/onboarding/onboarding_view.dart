import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'onboarding_view_model.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnboardingViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Stack(
          children: [
            PageView(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.red,
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.green,
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.yellow,
                )
              ],
            ),
          ],
        ),
      ),
      viewModelBuilder: () => OnboardingViewModel(),
    );
  }
}
