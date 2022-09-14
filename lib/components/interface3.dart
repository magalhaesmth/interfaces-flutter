import 'package:flutter/material.dart';

class Interface3 extends StatefulWidget {
  const Interface3({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Interface3> createState() => _Interface3();
}

class _Interface3 extends State<Interface3> {
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
