import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/botao.dart';

class Interface2 extends StatefulWidget {
  const Interface2({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Interface2> createState() => _Interface2();
}

class _Interface2 extends State<Interface2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Botao(
                descricao: 'Cliente',
                acao: () => print('Cliente'),
              ),
              Botao(
                descricao: 'Funcionario',
                acao: () => print('Cliente'),
              ),
              Botao(
                descricao: 'Fornecedor',
                acao: () => print('Cliente'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Esse é utilizando as funçoes separadamente em outras classes