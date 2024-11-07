import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/audio_provider.dart';

class PlayerControls extends StatelessWidget {
  const PlayerControls({super.key});

  @override
  Widget build(BuildContext context) {
    final audioProvider = Provider.of<AudioProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.play_arrow),
          onPressed: audioProvider.isPlaying ? null : audioProvider.play,
        ),
        IconButton(
          icon: Icon(Icons.pause),
          onPressed: audioProvider.isPlaying ? audioProvider.pause : null,
        ),
        IconButton(
          icon: Icon(Icons.stop),
          onPressed: audioProvider.stop,
        ),
      ],
    );
  }
}
