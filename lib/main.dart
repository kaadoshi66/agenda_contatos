import 'package:flutter/material.dart';
import 'view/home_page.dart';
import 'view/recursos/estilo.dart';

void main() => runApp(
      MaterialApp(
        title: "Agenda de Contatos",
        home: const Home(),
        debugShowCheckedModeBanner: false,
        theme: estilo(),
      ),
    );
