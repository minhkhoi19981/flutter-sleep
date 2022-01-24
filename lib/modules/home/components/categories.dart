import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_sleep/constants.dart';
import 'package:project_sleep/theme/app_colors.dart';
import 'package:project_sleep/theme/app_styles.dart';
import 'package:project_sleep/utils/size_config.dart';
import 'package:project_sleep/utils/ui_data_svgs.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": UIDataSvgs.iconAllCate, "text": "All"},
      {"icon": UIDataSvgs.iconMyCate, "text": "My"},
      {"icon": UIDataSvgs.iconAnxiousCate, "text": "Anxious"},
      {"icon": UIDataSvgs.iconSleepCate, "text": "Sleep"},
      {"icon": UIDataSvgs.iconKidsCate, "text": "Kids"},
    ];
    return Padding(
        padding: const EdgeInsets.only(top: 32, bottom: 32, left: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              categories.length,
              (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CategoryCard(
                    icon: categories[index]["icon"],
                    text: categories[index]["text"],
                    isSlected: selectedIndex == index,
                    press: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  )),
            ),
          ),
        ));
  }
}

class CategoryCard extends StatelessWidget {
  final String icon, text;
  final GestureTapCallback press;
  final bool isSlected;
  const CategoryCard(
      {Key? key,
      required this.icon,
      required this.text,
      required this.press,
      this.isSlected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(67),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              width: getProportionateScreenWidth(67),
              height: getProportionateScreenHeight(67),
              decoration: BoxDecoration(
                color: isSlected ? AppColors.primary : AppColors.secondary,
                borderRadius: BorderRadius.circular(22),
              ),
              child: SvgPicture.asset(
                icon,
              ),
            ),
            const SizedBox(height: 6),
            Text(text,
                style: AppStyles.textCategories.copyWith(
                    color: isSlected
                        ? AppColors.textActive
                        : AppColors.textButtonCate,
                    fontWeight: isSlected ? FontWeight.w600 : FontWeight.w400))
          ],
        ),
      ),
    );
  }
}
