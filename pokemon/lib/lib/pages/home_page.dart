import 'package:flutter/material.dart';
import 'package:pokemon/lib/pages/pokemon_page.dart';
//import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{
  String nomeDoPokemon = '';
  @override
  Widget build(BuildContext context) {
     var controller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Text(
              'Home Page',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ), //Text
          ], //Children
        ), //Row
      ), //AppBar

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Text(nomeDoPokemon),
           TextField(
                controller: controller,
                decoration: const InputDecoration(
                  hintText: 'Digite o nome do Pokemon:',
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.yellow,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.yellow,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.yellow,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ElevatedButton(
              onPressed: () ansync {
                final dio = Dio();
                var response = await dio.get('https://pokeapi.co/api/v2/pokemon/${controller.text}');
                String name = response.data['name'];
                String id = response.data['id'].toString();
                String type = response.data['types'][0]['type']['name'];
                String imageUrl = response.data['sprites']['front_default'];
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PokemonPage(
                      name: name,
                      id: id,
                      type: type,
                      imageUrl: imageUrl,
                    ), //PokemonPage
                  ), //MaterialPageRoute
                );
              }, //OnPressed
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
                backgroundColor: Colors.yellow,
              ),
              child: const Text(
                'Pesquisar',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20, 
                  fontWeight: FontWeight.bold,
                ),
              ),
            ), //ElevatedButton
          ], //Children
        ),//Column
      ), //Center
    );
  }
} //StatelessWidget