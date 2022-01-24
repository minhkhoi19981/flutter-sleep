import 'package:project_sleep/constants.dart';
import 'package:project_sleep/theme/app_colors.dart';
import 'package:project_sleep/theme/app_styles.dart';
import 'package:project_sleep/utils/size_config.dart';
import 'package:project_sleep/utils/ui_data_images.dart';
import 'package:flutter/material.dart';

class SleepLists extends StatefulWidget {
  SleepLists({Key? key}) : super(key: key);

  @override
  _SleepListsState createState() => _SleepListsState();
}

class _SleepListsState extends State<SleepLists> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> sleepLits = [
      {
        "image": UIDataImages.bgNightIsland,
        "text": "Night Island",
        "cate": "SLEEP MUSIC",
        "time": "45 min"
      },
      {
        "image": UIDataImages.bgSweetSleep,
        "text": "Sweet Sleep",
        "cate": "SLEEP MUSIC",
        "time": "45 min"
      },
      {
        "image": UIDataImages.bgGoodNight,
        "text": "Good Night",
        "cate": "SLEEP MUSIC",
        "time": "45 min"
      },
      {
        "image": UIDataImages.bgMoonClouds,
        "text": "Moon Clouds",
        "cate": "SLEEP MUSIC",
        "time": "45 min"
      },
      {
        "image": UIDataImages.bgGoodNight,
        "text": "Good Night",
        "cate": "SLEEP MUSIC",
        "time": "45 min"
      },
      {
        "image": UIDataImages.bgMoonClouds,
        "text": "Moon Clouds",
        "cate": "SLEEP MUSIC",
        "time": "45 min"
      },
    ];
    return GridView.count(
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        crossAxisSpacing: getProportionateScreenWidth(defaultPadding),
        mainAxisSpacing: getProportionateScreenWidth(defaultPadding),
        children: List.generate(
            sleepLits.length,
            (index) => CardSleepItem(
                cate: sleepLits[index]["cate"],
                image: sleepLits[index]["image"],
                text: sleepLits[index]["text"],
                time: sleepLits[index]["time"])));
  }
}

class CardSleepItem extends StatelessWidget {
  final String image, text, cate, time;
  const CardSleepItem(
      {Key? key,
      required this.cate,
      required this.image,
      required this.text,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          image,
          fit: BoxFit.cover,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              text,
              style: AppStyles.title.copyWith(fontSize: 16),
            )),
        Text(time + " . " + cate,
            style: AppStyles.text
                .copyWith(fontSize: 11, color: AppColors.textSecondary))
      ],
    );
  }
}
