import 'package:contador_simples_de_pessoal/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.amber,
        alignment: Alignment.center,
        child: const HomePage(),
      ),
    );
  }
}
