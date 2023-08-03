import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:m2_exam/core/constants/constants.dart';
import 'package:m2_exam/screens/main/pages/calendar/pages/calendar_page.dart';
import 'package:m2_exam/screens/main/pages/home/pages/home_page.dart';
import 'package:m2_exam/screens/main/pages/search/pages/search_page.dart';
import 'package:m2_exam/screens/main/pages/settings/pages/settings_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  BottomMenu _currentTab = BottomMenu.home;

  void _selectTab(BottomMenu tab) {
    setState(() {
      _currentTab = tab;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentTab.index,

        children: [HomePage(), SearchPage(),CalendarPage(),SettingsPage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentTab.index,
        showSelectedLabels: true,
        unselectedItemColor: Colors.white,
        onTap: (index) {
          _selectTab(BottomMenu.values[index]);
        },
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.homeIcon), label: ""),
          BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.searchIcon), label: ""),
          BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.calendarIcon), label: ""),
          BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.settingsIcon), label: ""),
        ],
      ),
    );
  }
}

enum BottomMenu { home,search, calendar, settings }