import 'package:flutter/material.dart';

class MenuCampos extends StatefulWidget {
  const MenuCampos({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MenuCampos> createState() => _MenuCampos();
}

class _MenuCampos extends State<MenuCampos> {
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
              criarInput('Digite sua senha', Icon(Icons.password),
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
