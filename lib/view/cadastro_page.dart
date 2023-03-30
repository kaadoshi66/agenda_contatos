import 'package:agenda_contatos/model/contato.dart';
import 'package:agenda_contatos/model/contato_service.dart';
import 'package:agenda_contatos/view/recursos/barra_superior.dart';
import 'package:agenda_contatos/view/recursos/menu.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State createState() => CadastroState();
}

class CadastroState extends State<Cadastro> {
  //! Controladores dos compos inputs
  final nome = TextEditingController();
  final sobrenome = TextEditingController();
  final email = TextEditingController();
  final fone = TextEditingController();
  final foto = TextEditingController();
  //!fim dos controladores
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraSuperior(),
      drawer: const MenuDrawer(),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade800),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //titulo
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(bottom: 15),
                child: Text(
                  "Cadastro de contato",
                  style: TextStyle(color: Colors.grey.shade300, fontSize: 24),
                ),
              ),
              //inputs(Campos do formulario)
              campoInput("Nome", nome),
              campoInput("Sobrenome", sobrenome),
              campoInput("E-mail", email),
              campoInput("Telefone", fone),
              campoInput("Perfil", foto),
              //SizedBox(height:15),
              //Botões
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //! Botão Cadastrar
                  Builder(
                    builder: (BuildContext context) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          cadastrar();
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 10,
                          ),
                          child: const Text(
                            "Cadastrar",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  //!Botão Limpar
                  Builder(
                    builder: (BuildContext context) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey.shade600),
                        onPressed: () {
                          limpar();
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 10,
                          ),
                          child: const Text(
                            "Limpar",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

//Retorna a estrutura do campo input
  Container campoInput(String nomeCampo, TextEditingController controlador) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: TextField(
        //textInputAction: TextInputAction.next,//!pula para proximo input
        //!Atributo que recebe o valor
        controller: controlador,
        decoration: InputDecoration(
          labelText: nomeCampo,
          // hintText: "Preencha todos os campos", //!famoso Placeholder
          labelStyle: TextStyle(
            color: Colors.grey.shade300,
            fontSize: 18,
          ),

          //!Borda do input
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),

          //!borda selecionada
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.orange,
            ),
          ),
        ),
      ),
    );
  }

//Cadastrar
  void cadastrar() {
    ContatoService service = ContatoService();
    Contato contato = Contato(
      id: 1,
      nome: nome.text,
      sobrenome: sobrenome.text,
      email: email.text,
      fone: fone.text,
      foto: foto.text,
    );

    //todo Envia o objeto preenchido para adcionar na lista
    String mensagem = service.cadastrarContato(contato);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          mensagem,
          style: TextStyle(
            color: Colors.grey.shade300,
          ),
        ),
        // duration: ,
        // behavior: ,
        // backgroundColor: ,
      ),
    );
  }

//Limpar campos
  void limpar() {
    nome.text = " ";
    sobrenome.text = " ";
    email.text = " ";
    fone.text = " ";
    foto.text = " ";
  }
}
