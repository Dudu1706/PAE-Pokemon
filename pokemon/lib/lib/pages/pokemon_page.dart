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
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Text(
              'Pokémon Page',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ), //Text
          ], //Children
        ), //Row
      ), //AppBar
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
    );
  }
} //StatelessWidget