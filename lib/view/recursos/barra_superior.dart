import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BarraSuperior extends AppBar {
  BarraSuperior({super.key})
      : super(
          automaticallyImplyLeading: false,
          centerTitle: true,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const FaIcon(FontAwesomeIcons.bars),
                onPressed: () => Scaffold.of(context).openDrawer(),
              );
            },
          ),
          //titulo
          title: Text(
            "Agenda de Contatos",
            style: TextStyle(
              color: Colors.orange.shade400,
              fontSize: 28,
            ),
          ),
          //menu icone
          iconTheme: IconThemeData(
            color: Colors.orange.shade400,
          ),
        );
}
