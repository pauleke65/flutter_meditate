import 'package:flutter/material.dart';
import 'package:flutter_meditate/utils/constants/app_colors.dart';
import 'package:flutter_meditate/utils/constants/app_textstyle.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: _screenSize.width * 0.05,
                  vertical: _screenSize.height * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, ",
                        style: AppTextStyles.text20,
                      ),
                      Text(
                        "Paul Imoke",
                        style: AppTextStyles.text25Bold,
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: _screenSize.height * 0.03,
                  )
                ],
              ),
            ),
            SizedBox(height: _screenSize.height * 0.02),
            SizedBox(
              width: _screenSize.width,
              height: _screenSize.height * 0.1,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (String topic in topics)
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: _screenSize.width * 0.03),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            radius: _screenSize.height * 0.03,
                          ),
                          SizedBox(height: _screenSize.height * 0.01),
                          Text(
                            topic,
                            style: AppTextStyles.text18,
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: _screenSize.height * 0.02),
            Container(
              height: _screenSize.height * 0.38,
              width: double.infinity,
              margin:
                  EdgeInsets.symmetric(horizontal: _screenSize.width * 0.05),
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(7)),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: _screenSize.width * 0.05,
                  vertical: _screenSize.height * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.black,
                      endIndent: 10,
                    ),
                  ),
                  Text(
                    "Meditation of the day",
                    style: AppTextStyles.text18,
                  ),
                  const Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.black,
                      indent: 10,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: _screenSize.height * 0.17,
              width: double.infinity,
              margin:
                  EdgeInsets.symmetric(horizontal: _screenSize.width * 0.05),
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(7)),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}

List<String> topics = ['All', 'My', 'Hope', 'Worth', 'Love', 'Joy', 'Life'];
