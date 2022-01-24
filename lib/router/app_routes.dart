import 'package:flutter/widgets.dart';
import 'package:project_sleep/modules/home/home_page.dart';
import 'package:project_sleep/modules/landing/landing_page.dart';
import 'package:project_sleep/router/app_route_name.dart';

final Map<String, WidgetBuilder> AppRoutes = {
  AppRouteName.landingPage: (context) => const LandingPage(),
  AppRouteName.homePage: (context) => const HomePage()
};
