// screens/search_screen.dart
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buscar')),
      body: Center(
        child: Text('Pantalla de Búsqueda de Canciones, Álbumes y Artistas'),
      ),
    );
  }
}
