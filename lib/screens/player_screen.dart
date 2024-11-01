import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/audio_provider.dart';
import '../widgets/player_controls.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("mSound Player")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Reproductor de Música"),
            SizedBox(height: 20),
            PlayerControls(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final audioProvider = Provider.of<AudioProvider>(context, listen: false);
                audioProvider.loadAudio("https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3");
              },
              child: Text("Cargar y Reproducir Audio"),
            ),
          ],
        ),
      ),
    );
  }
}
