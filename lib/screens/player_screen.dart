// screens/player_screen.dart
import 'package:flutter/material.dart';

class PlayerScreen extends StatelessWidget {
  final String songTitle;
  final String artist;

  const PlayerScreen({super.key, required this.songTitle, required this.artist});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reproduciendo')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(songTitle, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text(artist, style: TextStyle(fontSize: 18, color: Colors.grey)),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(icon: Icon(Icons.skip_previous), onPressed: () {}),
              IconButton(icon: Icon(Icons.play_arrow), onPressed: () {}),
              IconButton(icon: Icon(Icons.skip_next), onPressed: () {}),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
