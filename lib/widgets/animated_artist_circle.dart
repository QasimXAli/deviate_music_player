import 'dart:math' as math;

import 'package:deviate_music_player/utils/my_app_theme.dart';
import 'package:flutter/material.dart';

class AnimatedArtistCircle extends StatelessWidget {
  const AnimatedArtistCircle({
    super.key,
    required AnimationController controller,
  }) : _controller = controller;

  final AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * math.pi,
          child: child,
        );
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: DeviateTheme.primaryColor,
            width: 10,
          ),
        ),
        child: Image(
          image: DeviateTheme.images['playerArtist']!,
        ),
      ),
    );
  }
}
