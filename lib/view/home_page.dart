import 'package:agenda_contatos/view/recursos/menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      drawer: const MenuDrawer(),
      // //Corpo do App
      body: SingleChildScrollView(
        child: Column(
          children: [
            // const SizedBox(height: 25),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(25, 50, 25, 25),
              //!
              child: Column(
                children: [
                  //?titulo
                  Text(
                    "Fala tu, o que vamos fazer?",
                    style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 45),
                  //? Botao Buscar contato
                  Builder(
                    builder: (BuildContext context) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange.shade800,
                        ),
                        child: Container(
                          width: 300,
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              FaIcon(
                                FontAwesomeIcons.magnifyingGlass,
                                color: Colors.white,
                                size: 24,
                              ),
                              Text(
                                "Buscar Contatos",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Home(),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 10),
                  //?Botão Cadastrar Contato
                  Builder(
                    builder: (BuildContext context) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        child: Container(
                          width: 300,
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              FaIcon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                                size: 24,
                              ),
                              Text(
                                "Adicionar Contato",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onPressed: () {
                          //!Buscar
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
