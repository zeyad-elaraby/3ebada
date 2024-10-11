import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:islami/my_theme_data.dart';

import 'package:islami/tabs/hadeth/hadeth_tab.dart';
import 'package:islami/tabs/quran/quran_tab.dart';
import 'package:islami/tabs/radio_tab.dart';
import 'package:islami/tabs/sebha/sebha_tab.dart';
import 'package:islami/tabs/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/home_screen";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_selectedTabIndex],
      bottomNavigationBar: GNav(
          backgroundColor: Color(0xFFE2BE7F),
          tabBackgroundColor: Colors.brown.shade700,
          tabBorderRadius: 50,
          activeColor: Colors.white,
          haptic: true,
          selectedIndex: _selectedTabIndex,
          onTabChange: (value) {
            setState(() {
              _selectedTabIndex = value;
            });
          },
          gap: 10,
          tabMargin: EdgeInsets.all(2),
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.015,
            horizontal: MediaQuery.of(context).size.width * 0.03,
          ),
          tabs: [
            GButton(
              icon: Icons.clear,
              iconActiveColor: Colors.white,
              iconColor: Colors.black,
              text: "Quran",
              textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.white),
              leading: SvgPicture.asset(
                "assets/images/quran_tab_bottom_nav_icon.svg",
                width: 20,
                colorFilter: ColorFilter.mode(
                    _selectedTabIndex == 0 ? Colors.white : Colors.black,
                    BlendMode.srcIn),
              ),
            ),
            GButton(
                icon: Icons.clear,
                text: "Hadeth",
                textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.white),
                leading: SvgPicture.asset(
                  "assets/images/hadeth_tab_bottom_nav_icon.svg",
                  width: 20,
                  colorFilter: ColorFilter.mode(
                      _selectedTabIndex == 1 ? Colors.white : Colors.black,
                      BlendMode.srcIn),
                )),
            GButton(
                icon: Icons.clear,
                text: "Sebha",
                textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.white),
                leading: SvgPicture.asset(
                  "assets/images/sebha_tab_bottom_nav_icon.svg",
                  width: 20,
                  colorFilter: ColorFilter.mode(
                      _selectedTabIndex == 2 ? Colors.white : Colors.black,
                      BlendMode.srcIn),
                )),
            GButton(
                icon: Icons.clear,
                text: "Radio",
                textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.white),
                leading: SvgPicture.asset(
                  "assets/images/radio_tab_bottom_nav_icon.svg",
                  width: 20,
                  colorFilter: ColorFilter.mode(
                      _selectedTabIndex == 3 ? Colors.white : Colors.black,
                      BlendMode.srcIn),
                )),
            GButton(
              icon: Icons.settings_outlined,
              text: "Settings",
              textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.white),
            ),
          ]),
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab()
  ];
}
