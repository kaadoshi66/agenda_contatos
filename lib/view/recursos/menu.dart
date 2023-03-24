import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});
  //Dados vindo ddo banco de Dados(Simulação)
  final String user = "Igor Souza";
  final String email = "test@teste.com.br";
  final String fotoPerfil = "img/perfil.png";

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
          //home
          ListTile(
            title: const Text("Home"),
            subtitle: const Text("Página inicial"),
            trailing: const FaIcon(
              FontAwesomeIcons.circleChevronRight,
            ),
            leading: const FaIcon(
              FontAwesomeIcons.houseChimney,
            ),
            onTap: () {
              //navegação
            },
          ),

          //Contato

          //Configuraçôes

          //Logout
        ],
      ),
    );
  }
}
