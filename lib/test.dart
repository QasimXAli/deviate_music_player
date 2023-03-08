import 'package:carousel_slider/carousel_slider.dart';
import 'package:deviate_music_player/widgets/feature_card.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 250.0),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return FeatureCard();
          },
        );
      }).toList(),
    );
  }
}
