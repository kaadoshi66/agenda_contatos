import '../model/contato.dart';
import 'package:agenda_contatos/model/contato_service.dart';
import 'package:agenda_contatos/view/recursos/barra_superior.dart';
import 'package:agenda_contatos/view/recursos/menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Perfil extends StatelessWidget {
  //!Guarda o ID do contato selecionado
  final int id;
  //?Construtor com o atributo obrigatório
  Perfil({super.key, required this.id});
  //?Objeto da classe que contém a Busca dos Contatos
  final ContatoService service = ContatoService();
  @override
  Widget build(BuildContext context) {
    //!Objeto da Classe Contato
    Contato contato = service.listarContato().elementAt(id);
    return Scaffold(
      //Titulo
      appBar: BarraSuperior(),
      //Menu
      drawer: const MenuDrawer(),
      //Corpo do App
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            //foto
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  contato.foto,
                  height: 320,
                ),
              ],
            ),

            const SizedBox(height: 20),

            //nome
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "${contato.nome} ${contato.sobrenome}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      letterSpacing: 3,
                      wordSpacing: 3),
                ),
              ],
            ),

            const SizedBox(height: 10),
            //foto e email
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  contato.fone,
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 18,
                  ),
                ),
                Text(
                  contato.email,
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 18,
                  ),
                ),
              ],
            ),

            Container(
              padding: const EdgeInsets.only(
                top: 25,
                bottom: 25,
              ),
              child: const Divider(height: 5),
            ),

            //Ações
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //ligar
                Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.phone,
                      color: Colors.orange.shade400,
                      size: 28,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Ligar",
                      style: TextStyle(
                        color: Colors.orange.shade400,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                //mensagem
                Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.solidCommentDots,
                      color: Colors.orange.shade400,
                      size: 28,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Mensagem",
                      style: TextStyle(
                        color: Colors.orange.shade400,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                //video
                Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.camera,
                      color: Colors.orange.shade400,
                      size: 28,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Video",
                      style: TextStyle(
                        color: Colors.orange.shade400,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                //email
                Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.solidEnvelope,
                      color: Colors.orange.shade400,
                      size: 28,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "E-mail",
                      style: TextStyle(
                        color: Colors.orange.shade400,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      //Botão Flutuante(editar)
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange.shade600,
        onPressed: () {
          //
        },
        child: const FaIcon(
          FontAwesomeIcons.userPen,
        ),
      ),
    );
  }
}
