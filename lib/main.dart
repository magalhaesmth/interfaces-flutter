import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/interface1.dart';
import 'package:flutter_application_1/components/interface2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const Interface2(title: 'Primeira Interface'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                    shape: const StadiumBorder(),
                  ),
                  label: const Text('Cliente'),
                  icon: const Icon(Icons.person),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                    shape: const StadiumBorder(),
                  ),
                  label: const Text('Funcionário'),
                  icon: const Icon(Icons.people_alt),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                    shape: const StadiumBorder(),
                  ),
                  label: const Text('Fornecedor'),
                  icon: const Icon(Icons.home_work),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*class Estado {
  int? id;
  String? nome;
  String? sigla;

  Estado({this.id, this.nome, this.sigla});
}

class Cidade {
  int? id;
  String? nome;
  String? estado;

  Cidade({this.id, this.nome, this.estado});
}

void executar() {
  var var1 = Estado(id: 1, nome: 'PARANÁ', sigla: 'PR');
//  var var2 = Cidade(id: 1, nome: 'MARINGÁ', estado: var1);
//  print(estado);
}*/
