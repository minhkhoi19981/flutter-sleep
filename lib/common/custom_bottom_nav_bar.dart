import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_sleep/theme/app_colors.dart';
import 'package:project_sleep/theme/app_styles.dart';
import 'package:project_sleep/utils/ui_data_svgs.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _currentSelect = 0;
  List<Map<String, dynamic>> listNavs = [
    {"icon": UIDataSvgs.iconAllCate, "title": "Home"},
    {"icon": UIDataSvgs.iconSleepCate, "title": "Sleep"},
    {"icon": UIDataSvgs.iconMeditateNav, "title": "Meditate"},
    {"icon": UIDataSvgs.iconMusicNav, "title": "Music"},
    {"icon": UIDataSvgs.iconGroupNav, "title": "Avatar"},
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentSelect = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _currentSelect,
        onTap: _onItemTapped,
        elevation: 2,
        items: List.generate(
            listNavs.length,
            (index) => _buildItem(listNavs[index]["icon"],
                listNavs[index]["title"], _currentSelect == index)));
  }

  BottomNavigationBarItem _buildItem(String icon, String title, bool isSelect) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        icon,
        color: isSelect ? AppColors.iconActive : AppColors.iconDefault,
      ),
      label: title,
      backgroundColor: AppColors.bgNight,
    );
  }
}
