import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';
import 'package:deviate_music_player/models/duration_model.dart';

class AudioPlayerService {
  final AudioPlayer _audioPlayer = AudioPlayer();

  AudioPlayer get audioPlayer => _audioPlayer;

  late Stream<DurationState> _durationState;

  Stream<DurationState> get durationState => _durationState;

  void init() {
    _audioPlayer.stop();
    loadAudio();
    _durationState = Rx.combineLatest2<Duration, PlaybackEvent, DurationState>(
      _audioPlayer.positionStream,
      _audioPlayer.playbackEventStream,
      (position, playbackEvent) => DurationState(
        progress: position,
        buffered: playbackEvent.bufferedPosition,
        total: playbackEvent.duration ?? Duration.zero,
      ),
    );
  }

  Future<void> loadAudio() async {
    await _audioPlayer.setAudioSource(
      AudioSource.uri(
          Uri.parse('asset:///assets/songs/Is_there_someone_else.mp3'),
          headers: {'The Weekend': 'Is There Someone Else?'}),
    );
   
  }
}
