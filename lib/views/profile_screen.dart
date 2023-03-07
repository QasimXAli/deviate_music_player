import 'package:deviate_music_player/utils/my_app_theme.dart';
import 'package:deviate_music_player/widgets/artist_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final List<Widget> artistList = [
    const ArtistCard(
        artistImage: 'artist1',
        artistName: 'Urgent Siege',
        albumName: 'Damned Anthem'),
    const ArtistCard(
        artistImage: 'artist2',
        artistName: 'Urgent Siege',
        albumName: 'Damned Anthem'),
    const ArtistCard(
        artistImage: 'artist3',
        artistName: 'Urgent Siege',
        albumName: 'Damned Anthem'),
    const ArtistCard(
        artistImage: 'artist4',
        artistName: 'Urgent Siege',
        albumName: 'Damned Anthem'),
    const ArtistCard(
        artistImage: 'artist7',
        artistName: 'Urgent Siege',
        albumName: 'Damned Anthem'),
    const ArtistCard(
        artistImage: 'artist6',
        artistName: 'Urgent Siege',
        albumName: 'Damned Anthem')
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 230,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(135, 135),
                ),
                color: DeviateTheme.foregroundColor,
              ),
            ),
            Positioned(
              top: 30,
              child: CircleAvatar(
                  radius: 70,
                  backgroundImage: DeviateTheme.images['playerArtist']!),
            ),
            Positioned(
              top: 180,
              child: Text(
                'Olivia Rodrigo',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    const FaIcon(
                      color: Colors.white,
                      FontAwesomeIcons.heart,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Like',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    const FaIcon(
                      color: Colors.white,
                      FontAwesomeIcons.list,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Add playlist',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TextButton(
                onPressed: () {
                  Share.share('check out my website https://example.com',
                      subject: 'Look what I made!');
                },
                child: Row(
                  children: [
                    const FaIcon(
                      color: Colors.white,
                      FontAwesomeIcons.share,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Share',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    const FaIcon(
                      color: Colors.white,
                      FontAwesomeIcons.circleQuestion,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'About Recomendation',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Albums',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 169,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (context, i) {
                    return artistList[i];
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
