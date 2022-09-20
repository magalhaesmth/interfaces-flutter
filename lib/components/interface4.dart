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
        padding: const EdgeInsets.all(50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              criarInput(
                  'Digite seu nome', Icon(Icons.person), TextInputType.text),
              criarInput('Digite seu e-mail', Icon(Icons.mail),
                  TextInputType.emailAddress),
              criarInput('Digite seu e-mail', Icon(Icons.password),
                  TextInputType.visiblePassword),
            ],
          ),
        ),
      ),
    );
  }

  Widget criarInput(String texto, Icon icone, TextInputType tipo) {
    return SizedBox(
      child: TextField(
        keyboardType: tipo,
        decoration: InputDecoration(
            border: InputBorder.none, icon: icone, hintText: texto),
      ),
    );
  }
}
