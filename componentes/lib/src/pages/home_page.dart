import 'package:componentes/src/constantes/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Componentes'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                //llamar a la ruta
                Navigator.pushNamed(context, MyRoutes.listasConstructor.name);
              },
              child: Text('Listas con constructor'),
            ),
          ],
        ),
      ),
    );
  }
}
