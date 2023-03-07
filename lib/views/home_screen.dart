import 'package:deviate_music_player/utils/my_app_theme.dart';
import 'package:deviate_music_player/views/home_Tab1.dart';
import 'package:deviate_music_player/views/profile_screen.dart';
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
      length: 2,
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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: DeviateTheme.scaffoldBackgroundColor,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TabBar(
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
                tabs: [
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                        color: activeTabIndex == 0
                            ? DeviateTheme.foregroundColor
                            : DeviateTheme.scaffoldBackgroundColor,
                        // color: Color(0xFFC8E0DA),
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.elliptical(30, 30),
                        ),
                        // border:
                        //     Border.all(color: Colors.redAccent, width: 1)
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text('Radio'),
                      ),
                    ),
                  ),
                  const Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Home"),
                    ),
                  ),
                  const Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Profile"),
                    ),
                  ),
                  const Tab(
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
          children: [
            Placeholder(),
            HomeTab(),
            ProfileScreen(),
            Placeholder(),
          ],
        ),
      ),
    );
  }
}
