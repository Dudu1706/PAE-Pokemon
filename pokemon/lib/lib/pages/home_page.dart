import 'package:flutter/material.dart';
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
              decoration: InputDecoation(
                hintText: 'Digite o nome do Pokémon:',
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.yellow, width: 5,
                  ), //BorderSide
                ), //OutlineInputBorder
              ), //Decoration
              border: OutlineInputBorder
              controller: controller,
            ),//TextField
            const SizedBox(
              height: 16,
            ), //SizedBox
            ElevatedButttom(
              onPressed: () {}
              child: const Text('Pesquisar'),
              style: ElevatedButton.styeFrom(
                padding: EdgeInsets.symmetric(horizontal: 36, vertical: 16),
                backgroundColor: Colors.yellow,
              ),
              child: const Text(
                'Pesquisar',
                style: TextStyle(
                  color: Colors.blue,
                ), //TextStyle
              ), //Text
            ), //Elevated Button
            ElevatedButton(
              onPressed: () ansync {
                final dio = Dio();
                Response retorno = await dio.get('https://pokeapi.co/api/v2/pokemon/${controller.text}');
                Navigator.of(context).push(
                  MaterailPageRouter(
                    MaterialPageRoute(
                      builder: (context) => PokemonPage(
                        imageUrl: imageUrl,
                        name: name,
                        id: id,
                        type: type,
                      ), //PokemonPage
                    ), //MaterialPageToures
                  ),
                ),
                setState((){
                  nomeDoPokemon = retorno.data['name'];
                });
                print(retorno.data['types'][0]['types']['name']);
              } //OnPressed
            ), //ElevatedButton
          ], //Children
        ),//Column
      ), //Center
      backgroundColor: Colors.blue,
    );
  }
} //StatelessWidget