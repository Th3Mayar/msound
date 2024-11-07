// screens/library_screen.dart
import 'package:flutter/material.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Biblioteca')),
      body: Center(
        child: Text('Tus Playlists y Canciones Guardadas'),
        // playlists and saved songs
      ),
    );
  }
}
