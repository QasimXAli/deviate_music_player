import 'package:deviate_music_player/utils/my_app_theme.dart';
import 'package:flutter/material.dart';

class ArtistCard extends StatelessWidget {
  const ArtistCard(
      {super.key,
      required this.artistImage,
      required this.artistName,
      required this.albumName});

  final String artistName;
  final String albumName;
  final String artistImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            child: FittedBox(
              child: Image(
                image: DeviateTheme.images[artistImage]!,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          artistName,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.white,
              ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          albumName,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: Colors.white.withOpacity(0.5),
              ),
        ),
      ],
    );
  }
}
