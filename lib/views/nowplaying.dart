import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:deviate_music_player/utils/my_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math' as math;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';

class NowPlaying extends StatefulWidget {
  const NowPlaying({super.key});

  @override
  State<NowPlaying> createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(
      milliseconds: 3000,
    ),
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('images/nowplayingbg.jpeg'),
            colorFilter: ColorFilter.mode(
                Theme.of(context).scaffoldBackgroundColor.withOpacity(0.5),
                BlendMode.srcOver),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            // leading: Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: Container(
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(50),
            //         color: DeviateTheme.scaffoldBackgroundColor),
            //     child: IconButton(
            //       padding: EdgeInsets.zero,
            //       icon: const Icon(Icons.arrow_back_outlined),
            //       onPressed: () {},
            //     ),
            //   ),
            // ),
            actions: [
              IconButton(
                onPressed: () {
                  Share.share('check out my website https://example.com',
                      subject: 'Look what I made!');
                },
                icon: const Icon(Icons.share),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Column(
              children: [
                AnimatedBuilder(
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
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Imagine Dragons',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'RadioActive',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.white.withOpacity(0.8),
                      ),
                ),
                const Spacer(),
                Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ProgressBar(
                        barHeight: 4.0,
                        thumbColor: DeviateTheme.primaryColor,
                        thumbRadius: 8.0,
                        baseBarColor: Colors.grey,
                        timeLabelTextStyle:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: Colors.grey.withOpacity(0.8),
                                ),
                        progressBarColor: DeviateTheme.primaryColor,
                        progress: const Duration(milliseconds: 1000),
                        buffered: const Duration(milliseconds: 2000),
                        total: const Duration(milliseconds: 5000),
                        onSeek: (duration) {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image(
                              image: DeviateTheme.icons['playlist']!,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image(
                              image: DeviateTheme.icons['back']!,
                            ),
                          ),
                          isEnabled
                              ? IconButton(
                                  iconSize: 70,
                                  onPressed: () {
                                    setState(() {
                                      isEnabled = !isEnabled;
                                      _controller.repeat();
                                    });
                                  },
                                  icon: const FaIcon(
                                    FontAwesomeIcons.solidCirclePlay,
                                    color: DeviateTheme.primaryColor,
                                  ),
                                )
                              : IconButton(
                                  iconSize: 70,
                                  onPressed: () {
                                    setState(() {
                                      isEnabled = !isEnabled;
                                      _controller.reset();
                                    });
                                  },
                                  icon: const FaIcon(
                                    FontAwesomeIcons.solidCirclePause,
                                    color: DeviateTheme.primaryColor,
                                  ),
                                  // icon: SvgPicture.asset(
                                  //   'images/icons/play.svg',
                                  // ),
                                  // icon: Image(
                                  //   image: DeviateTheme.icons['play']!,
                                  // ),
                                ),
                          IconButton(
                            onPressed: () {},
                            icon: Image(
                              image: DeviateTheme.icons['next']!,
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_horiz,
                                color: DeviateTheme.primaryColor,
                              )),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
