import 'package:flutter/material.dart';
//import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{
  String nomeDoPokemon = '';
  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Text(
              'Home Page',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 20,
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
          children: [
            Text(nomeDoPokemon),
            TextField(
              controller: controller,
            ),//TextField
            /*ElevatedButton(
              onPressed: () ansync {
                Dio dio = Dio();
                Response retorno = await dio.get('https://pokeapi.co/api/v2/pokemon/${controller.text}');
                setState((){
                  nomeDoPokemon = retorno.data['name'];
                });
                print(retorno.data['types'][0]['types']['name']);
              } //OnPressed
            ), //ElevatedButton */
          ], //Children
        ),//Column
      ), //Center
      backgroundColor: Colors.blue,
    );
  }
} //StatelessWidget