import 'package:carousel_slider/carousel_slider.dart';
import 'package:deviate_music_player/utils/my_app_theme.dart';
import 'package:deviate_music_player/widgets/artist_card.dart';
import 'package:deviate_music_player/widgets/feature_card.dart';
import 'package:flutter/material.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

class SearchTab extends StatelessWidget {
  SearchTab({super.key});

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
            searchBox(),
            const SizedBox(
              height: 10,
            ),
            CarouselSlider(
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

Widget searchBox() {
  return OutlineSearchBar(
    backgroundColor: DeviateTheme.foregroundColor,
    elevation: 5,
    searchButtonPosition: SearchButtonPosition.trailing,
    searchButtonIconColor: Colors.white,
    hintText: 'Search',
    textPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
    hintStyle: TextStyle(
      color: Colors.grey[400],
    ),
    borderColor: DeviateTheme.primaryColor,
    borderRadius: const BorderRadius.all(
      Radius.circular(30),
    ),
  );
}
