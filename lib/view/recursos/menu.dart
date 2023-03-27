import 'package:agenda_contatos/view/buscar_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../home_page.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});
  //Dados vindo ddo banco de Dados(Simulação)
  final String user = "Igor Souza";
  final String email = "test@teste.com.br";
  final String fotoPerfil = "img/perfil.png";
  Text mostrarTitulo(String texto) {
    return Text(
      texto,
      style: const TextStyle(
        fontSize: 18,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          //Foto e informações
          UserAccountsDrawerHeader(
            accountName: Text(user),
            accountEmail: Text(email),
            currentAccountPicture: CircleAvatar(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(fotoPerfil),
              ),
            ),
          ),
          //!Home
          ListTile(
            title: mostrarTitulo("Home"),
            subtitle: const Text("Página inicial"),
            trailing: const FaIcon(
              FontAwesomeIcons.chevronRight,
            ),
            leading: FaIcon(
              FontAwesomeIcons.houseChimney,
              color: Colors.orange.shade400,
              size: 32,
            ),
            //navegação
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              );
            },
          ),
          //!Contato
          ListTile(
            title: mostrarTitulo("Contatos"),
            subtitle: const Text("Gerenciar contatos"),
            trailing: const FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(
              FontAwesomeIcons.addressBook,
              color: Colors.lightBlue.shade400,
              size: 32,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Busca(), //Buscar de contatos
                ),
              );
            },
          ),
          //!perfil
          ListTile(
            title: mostrarTitulo("Perfil"),
            subtitle: const Text("Editar informações"),
            trailing: const FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(
              FontAwesomeIcons.idCard,
              color: Colors.teal.shade200,
              size: 32,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Home(), //Buscar de contatos
                ),
              );
            },
          ),
          //!Configuraçôes
          ListTile(
            title: mostrarTitulo("Configurações"),
            subtitle: const Text("Configurações do sistema"),
            trailing: const FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(
              FontAwesomeIcons.gear,
              color: Colors.blueGrey.shade400,
              size: 32,
            ),
            onTap: () {
              //
            },
          ),
          //!Logout
          ListTile(
            title: mostrarTitulo("Logout"),
            subtitle: const Text("Sair"),
            trailing: const FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(
              FontAwesomeIcons.rightFromBracket,
              color: Colors.red.shade400,
              size: 32,
            ),
            onTap: () {
              //
            },
          ),
        ],
      ),
    );
  }
}
