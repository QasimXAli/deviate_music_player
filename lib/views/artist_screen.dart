import 'package:deviate_music_player/utils/my_app_theme.dart';
import 'package:deviate_music_player/widgets/artist_card.dart';
import 'package:deviate_music_player/widgets/artist_listview.dart';
import 'package:deviate_music_player/widgets/custom_tabbar.dart'
    as custom_tabbar;
import 'package:flutter/material.dart';

class ArtistScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  ArtistScreen({super.key});

  @override
  State<ArtistScreen> createState() => _ArtistScreenState();
}

class _ArtistScreenState extends State<ArtistScreen>
    with SingleTickerProviderStateMixin {
  bool isExpanded = false;
  bool isFollowing = false;

  final List<Widget> _tabViews = [
    ArtistListView(),
    ArtistListView(),
  ];

  late TabController _tabController;

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
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabViews.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final String artistName =
        ModalRoute.of(context)!.settings.arguments as String;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: DeviateTheme.scaffoldBackgroundColor),
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(Icons.arrow_back_outlined),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
        extendBodyBehindAppBar: true,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 240,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage('images/artistscreenimg.png'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Theme.of(context)
                            .scaffoldBackgroundColor
                            .withOpacity(0.5),
                        BlendMode.exclusion),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            artistName,
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(
                                () {
                                  isFollowing = !isFollowing;
                                },
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: isFollowing
                                  ? DeviateTheme.scaffoldBackgroundColor
                                  : DeviateTheme.primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                                side: BorderSide(
                                  color: isFollowing
                                      ? DeviateTheme.primaryColor
                                      : Colors.transparent,
                                ),
                              ),
                            ),
                            child: Text(
                              isFollowing ? 'Following' : 'Follow',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '5K Followers | 2.5K Listeners  | 10 Following',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
            custom_tabbar.CustomTabBar(
              tabs: [
                custom_tabbar.Tab(
                    text: "Top Songs", labelColor: DeviateTheme.primaryColor),
                custom_tabbar.Tab(
                    text: "All Songs", labelColor: DeviateTheme.primaryColor),
              ],
              onTabChanged: (index) {
                _tabController.animateTo(index);
              },
            ),
            isExpanded
                ? Expanded(
                    child: TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: _tabController,
                      children: _tabViews,
                    ),
                  )
                : SizedBox(
                    height: 250,
                    child: TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: _tabController,
                      children: _tabViews,
                    ),
                  ),
            Container(
              height: 40,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: DeviateTheme.foregroundColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 30,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: DeviateTheme.scaffoldBackgroundColor,
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      isExpanded
                          ? Icons.arrow_upward
                          : Icons.arrow_downward_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(
                        () => {isExpanded = !isExpanded},
                      );
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            isExpanded
                ? const SizedBox(
                    height: 1,
                  )
                : Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 10),
                    child: Text(
                      'Albums',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
            isExpanded
                ? const SizedBox(
                    height: 1,
                  )
                : Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: SizedBox(
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
                  ),
          ],
        ),
      ),
    );
  }
}
