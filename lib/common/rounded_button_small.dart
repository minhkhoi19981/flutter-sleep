import 'package:flutter/material.dart';
import 'package:project_sleep/theme/app_colors.dart';
import 'package:project_sleep/theme/app_styles.dart';
import 'package:project_sleep/utils/size_config.dart';

class RoundedButtonSmall extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final double width, borderRadius, height;
  const RoundedButtonSmall({
    Key? key,
    required this.text,
    required this.press,
    this.borderRadius = 24,
    this.width = 90,
    this.height = 35,
    this.color = AppColors.primary,
    this.textColor = Colors.white,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: getProportionateScreenWidth(width),
      height: getProportionateScreenHeight(height),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: newElevatedButtonSmall(),
      ),
    );
  }

  //Used:ElevatedButton as FlatButton is deprecated.
  //Here we have to apply customizations to Button by inheriting the styleFrom

  Widget newElevatedButtonSmall() {
    return ElevatedButton(
        child: Text(
          text,
          style: TextStyle(
              color: textColor, fontSize: 12, fontWeight: FontWeight.w400),
        ),
        onPressed: () => press(),
        style: ElevatedButton.styleFrom(
          primary: color,
          textStyle: AppStyles.textButton,
        ));
  }
}
