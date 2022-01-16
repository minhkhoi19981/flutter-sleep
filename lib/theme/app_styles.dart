import 'package:flutter/material.dart';
import 'package:project_sleep/theme/app_colors.dart';

class AppFronts {
  static const String helveticaNeue = 'HelveticaNeue';
}

class AppStyles {
  static TextStyle title = const TextStyle(
      color: AppColors.textTitle,
      fontSize: 30,
      fontWeight: FontWeight.bold,
      fontFamily: AppFronts.helveticaNeue);

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

  static ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    minimumSize: const Size(88, 36),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
    ),
  );
}
