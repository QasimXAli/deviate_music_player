import 'package:deviate_music_player/utils/my_app_theme.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ArtistListTile extends StatelessWidget {
  ArtistListTile(
      {super.key,
      required this.id,
      required this.name,
      required this.artistImage,
      required this.songName});

  late String id;
  late String name;
  late String artistImage;
  late String songName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListTile(
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(20),
                    shape: BoxShape.circle,
                    border: Border.all(color: DeviateTheme.primaryColor),
                    color: DeviateTheme.scaffoldBackgroundColor),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    id,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(artistImage),
                ),
              ),
            ),
          ],
        ),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.white,
                  ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              songName,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ],
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_horiz,
            size: 35,
            color: DeviateTheme.primaryColor,
          ),
        ),
      ),
    );
  }
}
