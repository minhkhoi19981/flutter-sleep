import 'package:flutter/material.dart';
import 'package:project_sleep/common/custom_bottom_nav_bar.dart';
import 'package:project_sleep/constants.dart';
import 'package:project_sleep/modules/home/components/banners.dart';
import 'package:project_sleep/modules/home/components/sleep_list.dart';
import 'package:project_sleep/theme/app_styles.dart';
import 'package:project_sleep/utils/size_config.dart';
import 'package:project_sleep/utils/ui_data_images.dart';

import 'components/categories.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const CustomBottomNavBar(),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              UIDataImages.bgSleepHome,
              fit: BoxFit.cover,
              alignment: const Alignment(0, -1),
            ),
            SafeArea(
                child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Sleep Stories", style: AppStyles.title),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 0, left: 32, right: 32, top: 20),
                      child: Text(
                        "Soothing bedtime stories to help you fall into a deep and natural sleep",
                        style: AppStyles.text,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                const Categories(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Banners(),
                ),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(
                    top: getProportionateScreenWidth(defaultPadding),
                    left: getProportionateScreenWidth(defaultPadding),
                    right: getProportionateScreenWidth(defaultPadding),
                  ),
                  child: SleepLists(),
                )),
              ],
            ))
          ],
        ));
  }
}
