import 'package:flutter/material.dart';
import 'package:flutter_meditate/utils/constants/app_colors.dart';
import 'package:stacked/stacked.dart';

import 'splashscreen_view_model.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashScreenViewModel>.reactive(
      onModelReady: (model) async {
        await model.initSplScrn();
      },
      builder: (context, model, child) => const Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: Text(
            "Devotional",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 25,
            ),
          ),
        ),
      ),
      viewModelBuilder: () => SplashScreenViewModel(),
    );
  }
}
