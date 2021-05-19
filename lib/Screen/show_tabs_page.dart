import 'package:ecommerce/Screen/Tabs/homepage_tab.dart';
import 'package:ecommerce/Screen/Tabs/profile_tab.dart';
import 'package:ecommerce/Screen/Tabs/search_tab.dart';
import 'package:ecommerce/Screen/Tabs/setting_tab.dart';
import 'package:ecommerce/Screen/Widget/top_nav_ShowPageTab.dart';
import 'package:flutter/material.dart';

class ShowTabsPage extends StatefulWidget {
  @override
  _ShowTabsPageState createState() => _ShowTabsPageState();
}

class _ShowTabsPageState extends State<ShowTabsPage> {
  int bottomNavigationBarItemIndex;
  final tabs = [HomePageTab(), SearchTab(), ProfileTab(), SettingTab()];

  @override
  void initState() {
    super.initState();
    bottomNavigationBarItemIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomNavigationBarItemIndex,
          unselectedItemColor: Colors.grey[500],
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          elevation: 100,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: (bottomNavigationBarItemIndex == 0)
                      ? Colors.lightBlueAccent
                      : Colors.grey[500],
                ),
                label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.search,
                  color: (bottomNavigationBarItemIndex == 1)
                      ? Colors.lightBlueAccent
                      : Colors.grey[500]),
              label: 'Search',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded,
                    color: (bottomNavigationBarItemIndex == 2)
                        ? Colors.lightBlueAccent
                        : Colors.grey[500]),
                label: 'Person'),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings,
                  color: (bottomNavigationBarItemIndex == 3)
                      ? Colors.lightBlueAccent
                      : Colors.grey[500]),
              label: 'Setting',
            )
          ],
          onTap: (value) {
            setState(() {
              bottomNavigationBarItemIndex = value;
            });
          }),
      body: tabs[bottomNavigationBarItemIndex],
    );
  }
}
