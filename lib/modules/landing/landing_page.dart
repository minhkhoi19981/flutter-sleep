import 'package:flutter/material.dart';
import 'package:project_sleep/common/rounded_button.dart';
import 'package:project_sleep/constants.dart';
import 'package:project_sleep/modules/home/home_page.dart';
import 'package:project_sleep/theme/app_styles.dart';
import 'package:project_sleep/utils/size_config.dart';
import 'package:project_sleep/utils/ui_data_images.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    SizeConfig().init(context);
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          UIDataImages.bgWelcome,
          fit: BoxFit.cover,
        ),
        SafeArea(
          child: Column(
            children: [
              const Spacer(),
              Column(
                children: [
                  Text(
                    "Welcome to Sleep",
                    style: AppStyles.title,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          bottom: 0, left: 32, right: 32, top: 20),
                      child: Text(
                        "Explore the new king of sleep. It uses sound  and vesualization to create perfect conditions for refreshing sleep.",
                        textAlign: TextAlign.center,
                        style: AppStyles.text,
                      ))
                ],
              ),
              const Spacer(),
              Align(
                widthFactor: double.infinity,
                alignment: Alignment.bottomRight,
                child: Image.asset(UIDataImages.logoWelcome),
              ),
              const Spacer(),
              Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: RoundedButton(
                    text: "GET STARTED",
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage())),
                  )),
              const SizedBox(height: defaultPadding),
            ],
          ),
        )
      ],
    ));
  }
}
