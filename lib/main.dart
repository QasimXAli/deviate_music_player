import 'package:deviate_music_player/test.dart';
import 'package:deviate_music_player/utils/my_app_theme.dart';
import 'package:deviate_music_player/views/add_artist_screen.dart';
import 'package:deviate_music_player/views/artist_screen.dart';
import 'package:deviate_music_player/views/home_screen.dart';
import 'package:deviate_music_player/views/nowplaying.dart';
import 'package:deviate_music_player/views/profile_screen.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/test': (context) => const TestScreen(),
        '/artistScreen': (context) => const ArtistScreen(),
        '/nowPlaying': (context) => const NowPlaying(),
        '/profileScreen': (context) => ProfileScreen(),
        '/addArtist': (context) => const AddArtistScreen(),
      },
    );
  }
}
