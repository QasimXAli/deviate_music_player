import 'package:deviate_music_player/utils/my_app_theme.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        width: 120,
        height: 120,
        child: Card(
          child: Image(
            image: MyAppTheme.images['artist1']!,
          ),
        ),
      ),
    ));
  }
}
