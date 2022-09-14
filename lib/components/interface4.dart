import 'package:flutter/material.dart';

class Interface4 extends StatefulWidget {
  const Interface4({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Interface4> createState() => _Interface4();
}

class _Interface4 extends State<Interface4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
        ),
      ),
    );
  }

  Widget criarBotao(String descricao) {
    return SizedBox(
      child: TextField(),
    );
  }
}
