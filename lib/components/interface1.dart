import 'package:flutter/material.dart';

class Interface1 extends StatefulWidget {
  const Interface1({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Interface1> createState() => _Interface1();
}

class _Interface1 extends State<Interface1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: centralizar(Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            criarBotao(descricao: 'Cliente', acao: cliqueCliente),
            criarBotao(descricao: 'Funcionario', acao: cliqueFuncionario),
            criarBotao(descricao: 'Fornecedor', acao: cliqueFornecedor),
          ],
        )));
  }

  void cliqueCliente() {
    print("50 linhas de código do cliente");
  }

  void cliqueFuncionario() {
    print("22 linhas de código do cliente");
  }

  void cliqueFornecedor() {
    print("17 linhas de código do cliente");
  }

  Widget centralizar(Widget coluna) {
    return Padding(
        padding: const EdgeInsets.all(20), child: Center(child: coluna));
  }

  Widget criarColuna() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        criarBotao(descricao: 'Cliente', acao: cliqueCliente),
        criarBotao(descricao: 'Funcionario', acao: cliqueFuncionario),
        criarBotao(descricao: 'Fornecedor', acao: cliqueFornecedor),
      ],
    );
  }

  Widget criarBotao({required String descricao, required Function acao}) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          primary: Colors.teal,
          shape: const StadiumBorder(),
        ),
        label: Text(descricao),
        icon: const Icon(Icons.person),
        onPressed: () {
          acao();
        },
      ),
    );
  }
}
