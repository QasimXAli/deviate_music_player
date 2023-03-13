import 'package:deviate_music_player/utils/my_app_theme.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  final Function(int) onTabChanged;
  final List<Tab> tabs;

  // ignore: prefer_const_constructors_in_immutables
  CustomTabBar({super.key, required this.tabs, required this.onTabChanged});

  @override
  // ignore: library_private_types_in_public_api
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: const BoxDecoration(
        color: DeviateTheme.scaffoldBackgroundColor,
        gradient: LinearGradient(
          colors: [
            Color(0xff111536),
            Color(0xff1D1F3E),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SizedBox(
          height: 10,
          child: Row(
            children: _buildTabItems(),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildTabItems() {
    List<Widget> items = [];

    for (int i = 0; i < widget.tabs.length; i++) {
      items.add(
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                _currentIndex = i;
              });

              widget.onTabChanged(i);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: _currentIndex == i
                    ? const BorderRadius.only(
                        topRight: Radius.elliptical(20, 20),
                        topLeft: Radius.elliptical(20, 20),
                        bottomLeft: Radius.elliptical(-50, 150),
                        bottomRight: Radius.elliptical(-50, 150),
                      )
                    : const BorderRadius.only(
                        topRight: Radius.elliptical(-50, 150),
                        topLeft: Radius.elliptical(-50, 150),
                        bottomLeft: Radius.elliptical(20, 20),
                        bottomRight: Radius.elliptical(20, 20),
                      ),
                color: DeviateTheme.foregroundColor,
              ),
              child: Stack(
                children: [
                  Container(
                    // decoration: BoxDecoration(
                    //   border: Border(
                    //     bottom: BorderSide(
                    //       width: 2,
                    //       color: _currentIndex == i
                    //           ? widget.tabs[i].labelColor
                    //           : Colors.transparent,
                    //     ),
                    //   ),
                    // ),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 8),
                        Text(
                          widget.tabs[i].text ?? '',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: _currentIndex == i
                                ? widget.tabs[i].labelColor
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
    return items;
  }
}

class Tab {
  final String? text;
  final Color labelColor;

  Tab({this.text, required this.labelColor});
}
