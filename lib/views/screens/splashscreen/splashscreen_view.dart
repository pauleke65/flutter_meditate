import 'package:flutter/material.dart';
import 'package:flutter_meditate/utils/constants/app_colors.dart';
import 'package:flutter_meditate/utils/constants/app_textstyle.dart';
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
      builder: (context, model, child) => Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: Text(
            "Devotional",
            style: AppTextStyles.text30Bold.copyWith(color: AppColors.white),
          ),
        ),
      ),
      viewModelBuilder: () => SplashScreenViewModel(),
    );
  }
}
