import 'package:deviate_music_player/test.dart';
import 'package:deviate_music_player/utils/my_app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deviate Music Player',
      theme: DeviateTheme.themeData,
      home: const Test(),
    );
  }
}
