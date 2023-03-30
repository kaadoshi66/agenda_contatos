import 'package:agenda_contatos/model/contato.dart';

class ContatoService {
  //? ATRIBUTOS DA CLASSE
  //cria a lista de contatos
  static List<Contato> contatos = [];
  //?FIM DOS ATRIBUTOS

  //!Método para cadastrar Contatos na agenda
  String cadastrarContato(Contato contato) {
    contatos.add(contato);

    return "cadastrado com sucesso: ${contato.nome} ${contato.sobrenome}";
  }
  //!FIM do Método

  //!Método para Buscar todos os Contatos Registrados
  List listarContato() {
    // contatos = [
    //   Contato(
    //     id: 0,
    //     nome: "Stephanie",
    //     sobrenome: "Schulze",
    //     email: "kat.dwnt@gmail.com",
    //     fone: "+31 06-11023611",
    //     foto: "img/fotos/foto1.jpg",
    //   ),
    //   Contato(
    //     id: 1,
    //     nome: "Rachel",
    //     sobrenome: "Muravyova",
    //     email: "RachelMuravyova@rhyta.com",
    //     fone: "+49 06359 90 77 81",
    //     foto: "img/fotos/foto2.jpg",
    //   ),
    //   Contato(
    //     id: 2,
    //     nome: "Etoile",
    //     sobrenome: "Gaudreau",
    //     email: "EtoileGaudreau@rhyta.com",
    //     fone: "+33 03.13.82.11.32",
    //     foto: "img/fotos/foto3.jpg",
    //   ),
    //   Contato(
    //     id: 3,
    //     nome: "Katrin",
    //     sobrenome: "Reinhard",
    //     email: "strum78charli@gmail.com",
    //     fone: "+49 030 47 65 80",
    //     foto: "img/fotos/foto4.jpg",
    //   ),
    //   Contato(
    //     id: 4,
    //     nome: "Dai",
    //     sobrenome: "Tsui",
    //     email: "ablee@gmail.com",
    //     fone: "(85) 5670-7086",
    //     foto: "img/fotos/foto5.jpg",
    //   ),
    //   Contato(
    //     id: 5,
    //     nome: "Hua",
    //     sobrenome: "Tsui",
    //     email: "laylee@gmail.com",
    //     fone: "(11) 3399-6176",
    //     foto: "img/fotos/foto6.jpg",
    //   ),
    //   Contato(
    //     id: 6,
    //     nome: "Drago",
    //     sobrenome: "Jozić",
    //     email: "ablee@gmail.com",
    //     fone: "+420 738 412 590",
    //     foto: "img/fotos/foto7.jpg",
    //   ),
    //   Contato(
    //     id: 7,
    //     nome: "Iwan",
    //     sobrenome: "Nowicki",
    //     email: "ablee@gmail.com",
    //     fone: "+48 66 303 08 48",
    //     foto: "img/fotos/foto8.jpg",
    //   ),
    // ];
    //!FIM do Método

    return contatos;
  }
}
