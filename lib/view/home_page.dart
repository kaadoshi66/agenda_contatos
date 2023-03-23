import 'package:agenda_contatos/view/recursos/menu.dart';
import 'package:flutter/material.dart';
import 'recursos/barra_superior.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Titulo do app
      appBar: BarraSuperior(),
      // //menu
      drawer: MenuDrawer(),
      // //Corpo do App
      // body: ,
    );
  }
}
