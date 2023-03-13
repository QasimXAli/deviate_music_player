import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:deviate_music_player/models/duration_model.dart';
import 'package:deviate_music_player/services/audio_player_service.dart';
import 'package:deviate_music_player/utils/my_app_theme.dart';
import 'package:deviate_music_player/widgets/animated_artist_circle.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';

import 'package:flutter/material.dart';

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

  final _audioPlayerService = AudioPlayerService();

  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller.stop();
    _audioPlayerService.init();
  }

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
                AnimatedArtistCircle(controller: _controller),
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
                    StreamBuilder<DurationState>(
                        stream: _audioPlayerService.durationState,
                        builder: (context, snapshot) {
                          final durationState = snapshot.data;
                          final progress =
                              durationState?.progress ?? Duration.zero;
                          final buffered =
                              durationState?.buffered ?? Duration.zero;
                          final total = durationState?.total ?? Duration.zero;

                          return SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: ProgressBar(
                              barHeight: 4.0,
                              thumbColor: DeviateTheme.primaryColor,
                              thumbRadius: 8.0,
                              baseBarColor: Colors.grey,
                              timeLabelTextStyle: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    color: Colors.grey.withOpacity(0.8),
                                  ),
                              progressBarColor: DeviateTheme.primaryColor,
                              progress: progress,
                              buffered: buffered,
                              total: total,
                              onSeek: (duration) {
                                _audioPlayerService.audioPlayer.seek(duration);
                              },
                            ),
                          );
                        }),
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
                          IconButton(
                            iconSize: 70,
                            onPressed: () {
                              setState(() {
                                if (_audioPlayerService.audioPlayer.playing) {
                                  _audioPlayerService.audioPlayer.pause();
                                  isPlaying = false;
                                  _controller.stop();
                                } else {
                                  _audioPlayerService.audioPlayer.play();
                                  isPlaying = true;
                                  _controller.repeat();
                                }
                              });
                            },
                            icon: FaIcon(
                              isPlaying
                                  ? FontAwesomeIcons.solidCirclePause
                                  : FontAwesomeIcons.solidCirclePlay,
                              color: DeviateTheme.primaryColor,
                            ),
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
                            ),
                          ),
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
