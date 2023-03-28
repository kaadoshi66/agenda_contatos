import 'package:agenda_contatos/view/recursos/barra_superior.dart';
import 'package:agenda_contatos/view/recursos/menu.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  State createState() => CadastroState();
}

class CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraSuperior(),
      drawer: const MenuDrawer(),
      body: SingleChildScrollView(
        child: Container(
          height: 250,
          width: 250,
          color: Colors.blue,
          child: const Text("ok"),
        ),
      ),
    );
  }
//Retorna a estrutura do campo input

//Cadastrar

//Limpar campos
}
