import 'package:deviate_music_player/utils/my_app_theme.dart';
import 'package:deviate_music_player/views/home_Tab1.dart';
import 'package:deviate_music_player/views/nowplaying.dart';
import 'package:deviate_music_player/views/profile_screen.dart';
import 'package:deviate_music_player/views/search_tab.dart';
import 'package:deviate_music_player/widgets/custom_tabbar.dart'
    as custom_tabbar;
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;
  int activeTabIndex = 1;

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 40,
              child: custom_tabbar.CustomTabBar(
                tabs: [
                  custom_tabbar.Tab(
                      text: "Radio", labelColor: DeviateTheme.primaryColor),
                  custom_tabbar.Tab(
                      text: "Home", labelColor: DeviateTheme.primaryColor),
                  custom_tabbar.Tab(
                      text: "Profile", labelColor: DeviateTheme.primaryColor),
                  custom_tabbar.Tab(
                      text: "Search", labelColor: DeviateTheme.primaryColor),
                ],
                onTabChanged: (index) {
                  _tabcontroller.animateTo(index);
                },
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabcontroller,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  const NowPlaying(),
                  HomeTab(),
                  ProfileScreen(),
                  SearchTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}





// custom_tabbar.CustomTabBar(
//               tabs: [
//                 custom_tabbar.Tab(
//                     text: "Radio", labelColor: DeviateTheme.primaryColor),
//                 custom_tabbar.Tab(
//                     text: "Home", labelColor: DeviateTheme.primaryColor),
//                 custom_tabbar.Tab(
//                     text: "Profile", labelColor: DeviateTheme.primaryColor),
//                 custom_tabbar.Tab(
//                     text: "Search", labelColor: DeviateTheme.primaryColor),
//               ],
//               onTabChanged: (index) {
//                 _tabcontroller.animateTo(index);
//               },
//             ),