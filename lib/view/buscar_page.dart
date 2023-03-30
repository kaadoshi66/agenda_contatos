import 'package:agenda_contatos/view/cadastro_page.dart';
import 'package:agenda_contatos/view/perfil_page.dart';
import '../model/contato.dart';
import 'package:agenda_contatos/model/contato_service.dart';
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
  //Objeto de Model
  ContatoService service = ContatoService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraSuperior(),
      drawer: const MenuDrawer(),
      body: ListView.builder(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 75),
        itemCount: service.listarContato().length,
        itemBuilder: (BuildContext context, int index) {
          //Guarda o retorno da lista da classe
          Contato contato = service.listarContato().elementAt(index);
          return Container(
            color: Colors.grey.shade800,
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 5,
            ),
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //foto miniatura
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      contato.foto,
                      // "img/fotos/foto2.jpg",
                      width: 65,
                      height: 65,
                      fit: BoxFit.cover,
                    ),
                  ),
                  //nome e telefone
                  Column(
                    children: [
                      Text(
                        "${contato.nome} ${contato.sobrenome}",
                        // "Pressoa 1",
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 24),
                      ),
                      const SizedBox(height: 5),
                      Text(contato.fone),
                    ],
                  ),
                  const SizedBox(width: 15),
                ],
              ),
              trailing: IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.chevronRight,
                  color: Colors.white,
                  size: 32,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Perfil(
                        id: contato.id,
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
      //!Botão Flutuante(Cadastro)
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange.shade600,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Cadastro(),
            ),
          );
        },
        child: const FaIcon(
          FontAwesomeIcons.plus,
          color: Colors.white,
          size: 32,
        ),
      ),
    );
  }
}
