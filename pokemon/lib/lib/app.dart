import 'package:flutter/material.dart';
import 'package:pokemon/lib/pages/home_page.dart';
import 'package:pokemon/lib/pages/pokemon_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        '/home': (context) => const HomePage(),
        '/pokemon':(context) => const PokemonPage(name: '', id: '', type: '', imageUrl: '',),
      },
    );
  }
}
