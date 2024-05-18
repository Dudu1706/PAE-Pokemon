import 'package:flutter/material.dart';

class PokemonPage extends StatelessWidget {
  final String name;
  final String id;
  final String type;
  final String imageUrl;

  const PokemonPage({
    super.key,
    required this.name,
    required this.id,
    required this.type,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon Page'),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(imageUrl),
            ),
            Text('Name: $name', style: const TextStyle(color: Colors.yellow)),
            Text('ID: $id', style: const TextStyle(color: Colors.yellow)),
            Text('Type: $type', style: const TextStyle(color: Colors.yellow)),
          ],
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
} //StatelessWidget