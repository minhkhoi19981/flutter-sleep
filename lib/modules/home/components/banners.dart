import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_sleep/common/rounded_button.dart';
import 'package:project_sleep/common/rounded_button_small.dart';
import 'package:project_sleep/theme/app_colors.dart';
import 'package:project_sleep/theme/app_styles.dart';
import 'package:project_sleep/utils/size_config.dart';
import 'package:project_sleep/utils/ui_data_images.dart';

class Banners extends StatelessWidget {
  const Banners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(233),
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              UIDataImages.bgBanner,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "The Ocean Moon",
                    style: AppStyles.titleBanner,
                  ),
                  const SizedBox(height: 8),
                  Text(
                      "Non-stop 8- hour mixes of our \nmost popular sleep audio",
                      style: AppStyles.text,
                      textAlign: TextAlign.center),
                  const SizedBox(height: 12),
                  RoundedButtonSmall(
                      text: 'START',
                      press: () {},
                      color: AppColors.bgSecondaray,
                      textColor: AppColors.textButtonSecondaray)
                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(25),
                  //   child: ElevatedButton(
                  //       onPressed: () {},
                  //       style: ElevatedButton.styleFrom(
                  //         primary: AppColors.bgSecondaray,
                  //       ),
                  //       child: Text(
                  //         'START',
                  //         style: AppStyles.textButton.copyWith(
                  //           color: AppColors.textButtonSecondaray,
                  //         ),
                  //       )),
                  // )
                ],
              ))
        ],
      ),
    );
  }
}
