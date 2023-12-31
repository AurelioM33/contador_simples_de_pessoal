// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrament() {
    setState(() {
      count--;
    });
    print(count);
  }

  void increment() {
    setState(() {
      count++;
    });
    print(count);
  }

  bool get isEmpty => count == 0;
  bool get isFull => count == 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/fitness.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isFull ? "Lotado" : "Bem Vindo!!",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w800,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Text(
                "$count",
                style: TextStyle(
                  color: isFull ? Colors.red : Colors.white,
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: isEmpty
                          ? Colors.white.withOpacity(0.2)
                          : Colors.white,
                      fixedSize: const Size(65, 65),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      )),
                  onPressed: () {
                    return isEmpty ? null : decrament();
                  },
                  child: const Text(
                    "Saiu",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(width: 32),
                TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor:
                          isFull ? Colors.white.withOpacity(0.2) : Colors.white,
                      fixedSize: const Size(60, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                  onPressed: () {
                    return isFull ? null : increment();
                  },
                  child: const Text(
                    "Entrou",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
