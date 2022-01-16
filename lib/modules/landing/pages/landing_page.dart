import 'package:flutter/material.dart';
import 'package:project_sleep/common/rounded_button.dart';
import 'package:project_sleep/theme/app_styles.dart';
import 'package:project_sleep/utils/uidata.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          UIData.bgWelcome,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
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
                      ),
                    ),
                  ],
                ),
              )),
              Expanded(
                  child: Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(UIData.logoWelcome),
              )),
              Expanded(
                  child: Align(
                      alignment: Alignment.center,
                      child: RoundedButton(
                        text: "GET STARTED",
                        press: () {},
                      ))),
            ],
          ),
        )
      ],
    ));
  }
}
