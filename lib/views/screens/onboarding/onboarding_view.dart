import 'package:flutter/material.dart';
import 'package:flutter_meditate/utils/constants/app_colors.dart';
import 'package:flutter_meditate/utils/constants/app_textstyle.dart';
import 'package:stacked/stacked.dart';

import 'onboarding_view_model.dart';

class OnboardingView extends StatelessWidget {
  OnboardingView({Key? key}) : super(key: key);

  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return ViewModelBuilder<OnboardingViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: model.setCurrentIndex,
              children: [
                for (int i in [0, 1, 2])
                  Container(
                      width: double.infinity,
                      height: double.infinity,
                      padding: EdgeInsets.symmetric(
                        horizontal: _screenSize.width * 0.2,
                      ),
                      color: AppColors.primary.withRed(i * 220),
                      child: Center(
                        child: Text(
                          "Fill your heart and mind with God’s Word.",
                          style: AppTextStyles.text20
                              .copyWith(color: AppColors.white),
                        ),
                      )),
              ],
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(bottom: _screenSize.height * 0.15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  model.currentIndex == 0 ? const Active() : const InActive(),
                  SizedBox(width: _screenSize.width * 0.02),
                  model.currentIndex == 1 ? const Active() : const InActive(),
                  SizedBox(width: _screenSize.width * 0.02),
                  model.currentIndex == 2 ? const Active() : const InActive(),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.symmetric(
                  vertical: _screenSize.height * 0.05,
                  horizontal: _screenSize.width * 0.05),
              child: model.currentIndex < 2
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () => _pageController.animateToPage(2,
                                duration: const Duration(milliseconds: 1000),
                                curve: Curves.bounceOut),
                            child: Text(
                              "Skip",
                              style: AppTextStyles.text18
                                  .copyWith(color: AppColors.white),
                            )),
                        InkWell(
                          onTap: () => _pageController.animateToPage(
                              model.currentIndex + 1,
                              duration: const Duration(milliseconds: 1000),
                              curve: Curves.bounceOut),
                          child: Container(
                            width: _screenSize.height * 0.05,
                            height: _screenSize.height * 0.05,
                            child: const Icon(Icons.arrow_right_alt,
                                color: AppColors.white),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 1),
                            ),
                          ),
                        )
                      ],
                    )
                  : TextButton(
                      onPressed: model.navigateToLogin,
                      child: Text(
                        "Get Started",
                        style: AppTextStyles.text18Bold
                            .copyWith(color: AppColors.white),
                      )),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => OnboardingViewModel(),
    );
  }
}

class Active extends StatelessWidget {
  const Active({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size.height * 0.008;
    final _activeWidth = MediaQuery.of(context).size.width * 0.06;

    return Container(
      height: _size,
      width: _activeWidth,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(_size)),
    );
  }
}

class InActive extends StatelessWidget {
  const InActive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size.height * 0.008;

    return Container(
      height: _size,
      width: _size,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(_size)),
    );
  }
}
