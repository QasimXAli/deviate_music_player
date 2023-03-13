import 'package:deviate_music_player/utils/my_app_theme.dart';
import 'package:deviate_music_player/widgets/artist_listtile.dart';
import 'package:flutter/material.dart';

class ArtistListView extends StatelessWidget {
  ArtistListView({super.key});

  final List<Widget> artistListtile = [
    ArtistListTile(
      id: '1',
      name: 'The Weekend',
      artistImage: 'images/artist1.png',
      songName: 'Is There Someone Else?',
    ),
    ArtistListTile(
      id: '2',
      name: 'Imagine Dragon',
      artistImage: 'images/artist2.png',
      songName: 'Bones',
    ),
    ArtistListTile(
        id: '3',
        name: 'Taylor Swift',
        artistImage: 'images/artist3.png',
        songName: 'You Belong With Me'),
    ArtistListTile(
      id: '4',
      name: 'The Chainsmokers',
      artistImage: 'images/artist4.png',
      songName: 'Closer',
    ),
    ArtistListTile(
        id: '6',
        name: 'Charlie puth',
        artistImage: 'images/artist6.png',
        songName: 'Light Switch'),
    ArtistListTile(
      id: '7',
      name: 'Alec Benjamin',
      artistImage: 'images/artist7.png',
      songName: 'Let Me Down Slowly',
    ),
    ArtistListTile(
      id: '8',
      name: 'Rihanna',
      artistImage: 'images/artist1.png',
      songName: 'Umbrella',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: DeviateTheme.foregroundColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 7,
              itemBuilder: (context, i) {
                return artistListtile[i];
              },
            ),
          ),
        ],
      ),
    );
  }
}
