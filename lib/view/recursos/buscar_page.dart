import 'package:agenda_contatos/view/recursos/barra_superior.dart';
import 'package:agenda_contatos/view/recursos/menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 75),
          itemCount: 23,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.grey.shade800,
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              child: ListTile(
                title: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //foto miniatura
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        "img/fotos/foto2.jpg",
                        width: 65,
                        height: 65,
                        fit: BoxFit.cover,
                      ),
                    ),

                    //nome e telefone
                  ],
                ),
                trailing: IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.chevronRight,
                    color: Colors.white,
                    size: 32,
                  ),
                  onPressed: () {},
                ),
              ),
            );
          },
        ),
        //!Botão Flutuante
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const FaIcon(
            FontAwesomeIcons.plus,
            color: Colors.white,
            size: 32,
          ),
        ));
  }
}
