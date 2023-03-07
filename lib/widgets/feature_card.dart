import 'package:deviate_music_player/utils/my_app_theme.dart';
import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.925,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            FittedBox(
              fit: BoxFit.cover,
              child: Image(image: DeviateTheme.images['featureCard']!),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Feature Song',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const Spacer(),
                  Text(
                    'Follow The Leader ft. Jennifer',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Wisin & Yandel | Featured Song | 11.12.2021',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: Colors.white.withOpacity(0.5)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
