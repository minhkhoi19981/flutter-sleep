import 'package:flutter/material.dart';
import 'package:project_sleep/theme/app_colors.dart';

class AppFronts {
  static const String helveticaNeue = 'HelveticaNeue';
  static const String garamod = 'Garamod';
}

class AppStyles {
  static TextStyle title = const TextStyle(
      color: AppColors.textTitle,
      fontSize: 30,
      fontWeight: FontWeight.bold,
      fontFamily: AppFronts.helveticaNeue);

  static TextStyle titleBanner = const TextStyle(
      color: AppColors.titleBanner,
      fontFamily: AppFronts.garamod,
      fontSize: 36,
      fontWeight: FontWeight.bold);

  static TextStyle text = const TextStyle(
      color: AppColors.text,
      fontSize: 16,
      fontWeight: FontWeight.w300,
      fontFamily: AppFronts.helveticaNeue);

  static TextStyle textButton = const TextStyle(
      color: AppColors.textButton,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: AppFronts.helveticaNeue);

  static TextStyle textCategories = const TextStyle(
      color: AppColors.textButtonCate,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: AppFronts.helveticaNeue);

  static TextStyle titleNavBottom = const TextStyle(
      color: AppColors.titleNavBottom,
      fontSize: 14,
      fontWeight: FontWeight.normal,
      fontFamily: AppFronts.helveticaNeue);
}
