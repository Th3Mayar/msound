import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class AudioProvider with ChangeNotifier {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool isPlaying = false;

  Future<void> loadAudio(String url) async {
    await _audioPlayer.setUrl(url);
  }

  void play() {
    _audioPlayer.play();
    isPlaying = true;
    notifyListeners();
  }

  void pause() {
    _audioPlayer.pause();
    isPlaying = false;
    notifyListeners();
  }

  void stop() {
    _audioPlayer.stop();
    isPlaying = false;
    notifyListeners();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
}
