import 'package:componentes/src/constantes/routes.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(useMaterial3: false),
      home: const HomePage(),
      initialRoute: MyRoutes.home.name,
      routes: routes,
    );
  }
}
