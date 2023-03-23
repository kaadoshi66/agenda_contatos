import 'package:agenda_contatos/view/recursos/estilo.dart';
import 'package:flutter/material.dart';
import 'view/home_page.dart';

void main() => runApp(
      MaterialApp(
        title: "Agenda de Contatos",
        home: const Home(),
        debugShowCheckedModeBanner: false,
        theme: estilo(),
      ),
    );
