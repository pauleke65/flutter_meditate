import 'package:flutter/material.dart';
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
                Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.red,
                    child: const Center(
                      child: Text("Text 1"),
                    )),
                Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.green,
                    child: const Center(
                      child: Text("Text 2"),
                    )),
                Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.yellow,
                    child: const Center(
                      child: Text("Text 3"),
                    ))
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
