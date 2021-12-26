import 'package:flutter/widgets.dart';

class AppTextStyles {
  static final double _height =
      MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size.height;

  static TextStyle text30 = TextStyle(fontSize: _height * 0.030);
  static TextStyle text30Bold = TextStyle(
    fontSize: _height * 0.030,
    fontWeight: FontWeight.w800,
  );

  static TextStyle text25 = TextStyle(fontSize: _height * 0.025);
  static TextStyle text25Bold = TextStyle(
    fontSize: _height * 0.025,
    fontWeight: FontWeight.bold,
  );
  static TextStyle text20 = TextStyle(fontSize: _height * 0.02);
  static TextStyle text20Bold = TextStyle(
    fontSize: _height * 0.02,
    fontWeight: FontWeight.bold,
  );
  static TextStyle text18 = TextStyle(fontSize: _height * 0.018);
  static TextStyle text18Bold = TextStyle(
    fontSize: _height * 0.018,
    fontWeight: FontWeight.bold,
  );
}
