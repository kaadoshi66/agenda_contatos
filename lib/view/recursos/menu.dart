// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  MenuDrawer({super.key});
  //Dados vindo ddo banco de Dados(Simulação)
  String user = "Igor Souza";
  String email = "test@teste.com.br";
  String fotoPerfil = "img/perfil.png";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          //Foto e informações
          UserAccountsDrawerHeader(
            accountName: Text(user),
            accountEmail: Text(email),
            currentAccountPicture: Image.asset(fotoPerfil),
          ),
        ],
      ),
    );
  }
}
