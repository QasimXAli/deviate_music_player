import 'package:carousel_slider/carousel_slider.dart';
import 'package:deviate_music_player/utils/my_app_theme.dart';
import 'package:deviate_music_player/widgets/artist_card.dart';
import 'package:deviate_music_player/widgets/feature_card.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  HomeTab({super.key});

  final List<Widget> artistList = [
    const ArtistCard(
        artistImage: 'artist1',
        artistName: 'The Weekend',
        albumName: 'Damned Anthem'),
    const ArtistCard(
        artistImage: 'artist2',
        artistName: 'Taylor Swift',
        albumName: 'Damned Anthem'),
    const ArtistCard(
        artistImage: 'artist3',
        artistName: 'The Chainsmokers',
        albumName: 'Damned Anthem'),
    const ArtistCard(
        artistImage: 'artist4',
        artistName: 'Charlie Puth',
        albumName: 'Damned Anthem'),
    const ArtistCard(
        artistImage: 'artist7',
        artistName: 'Alec Benjamin',
        albumName: 'Damned Anthem'),
    const ArtistCard(
        artistImage: 'artist6',
        artistName: 'Rihanna',
        albumName: 'Damned Anthem')
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 300,
            decoration:
                const BoxDecoration(color: DeviateTheme.foregroundColor),
            child: CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 0.9,
                height: 240.0,
                autoPlay: true,
                autoPlayInterval: const Duration(milliseconds: 3500),
              ),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return const FeatureCard();
                  },
                );
              }).toList(),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  'New Songs',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              const SizedBox(
                height: 10,
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
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Favourte Artist',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: DeviateTheme.foregroundColor,
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Add your favourite Artist',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const Icon(
                              Icons.add,
                              color: DeviateTheme.primaryColor,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: DeviateTheme.foregroundColor),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Taylor Swift',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const Icon(
                              Icons.add,
                              color: DeviateTheme.primaryColor,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: DeviateTheme.foregroundColor),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Taylor Swift',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const Icon(
                              Icons.add,
                              color: DeviateTheme.primaryColor,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
