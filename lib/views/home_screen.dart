import 'package:deviate_music_player/utils/my_app_theme.dart';
import 'package:deviate_music_player/views/home_Tab1.dart';
import 'package:deviate_music_player/views/nowplaying.dart';
import 'package:deviate_music_player/views/profile_screen.dart';
import 'package:deviate_music_player/views/search_tab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  int activeTabIndex = 1;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 4,
      initialIndex: 1,
      vsync: this,
    );
    controller.addListener(() {
      setState(() {
        activeTabIndex = controller.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DeviateTheme.scaffoldBackgroundColor,
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TabBar(
              controller: controller,
              labelColor: Colors.redAccent,
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: Theme.of(context).textTheme.titleMedium,
              indicator: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.elliptical(50, 50),
                ),
                color: DeviateTheme.foregroundColor,
              ),
              tabs: const [
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('Radio'),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Home"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Profile"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Search"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        physics: NeverScrollableScrollPhysics(),
        children: [
          NowPlaying(),
          HomeTab(),
          ProfileScreen(),
          SearchTab(),
        ],
      ),
    );
  }
}
