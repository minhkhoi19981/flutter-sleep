import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_sleep/modules/landing/pages/landing_page.dart';
import 'package:project_sleep/theme/app_colors.dart';
import 'package:project_sleep/theme/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
        title: 'Sleep App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: AppColors.primary,
              textStyle: AppStyles.textButton,
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const SafeArea(
          top: false,
          bottom: false,
          child: LandingPage(),
        ));
  }
}
