import 'package:flutter/material.dart';
import 'package:flutter_meditate/app/app.locator.dart';
import 'package:flutter_meditate/app/app.router.dart';
import 'package:flutter_meditate/utils/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked_services/stacked_services.dart';

void main() async {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: AppColors.primary,
          textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
          scaffoldBackgroundColor: AppColors.white),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
