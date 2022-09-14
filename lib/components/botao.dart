import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  String descricao;
  Function acao;

  Botao({Key? key, required this.descricao, required this.acao})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
