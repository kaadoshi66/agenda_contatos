import 'package:agenda_contatos/view/recursos/barra_superior.dart';
import 'package:agenda_contatos/view/recursos/menu.dart';
import 'package:flutter/material.dart';

class Busca extends StatefulWidget {
  const Busca({super.key});
  @override
  State createState() => BuscaState();
}

class BuscaState extends State<Busca> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraSuperior(),
      drawer: const MenuDrawer(),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container();
        },
      ),
    );
  }
}
