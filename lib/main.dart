import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/audio_provider.dart';
import 'screens/player_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AudioProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'mSound',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: PlayerScreen(),
      ),
    );
  }
}
