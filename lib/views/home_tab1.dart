import 'package:deviate_music_player/utils/my_app_theme.dart';
import 'package:deviate_music_player/widgets/artist_card.dart';
import 'package:deviate_music_player/widgets/feature_card.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  HomeTab({super.key});

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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, i) {
                    return FeatureCard();
                  }),
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
      ),
    );
  }
}
