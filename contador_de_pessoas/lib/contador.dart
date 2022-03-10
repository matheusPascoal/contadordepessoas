import 'dart:ui';

import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({Key? key}) : super(key: key);

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  get onPressed => null;

  int count = 0;
// DIMINUI 1
  decrement() {
    setState(() {
      count--;
    });
  }

// AUMENTA 1
  increment() {
    setState(() {
      count++;
    });
  }

  bool get isEmpty => count == 0;
  bool get isFull => count >= 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/rest.jpg'), fit: BoxFit.cover),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // SE NO APP DER LOTADO ELE MUDA O TEXTO
          Text(isFull ? 'lotado' : "Pode entrar!",
              style: const TextStyle(fontSize: 30, color: Colors.white)),
          SizedBox(height: 60),
          Text(count.toString(),
              style: TextStyle(
                  fontSize: 80, color: isFull ? Colors.red : Colors.white)),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: isEmpty ? null : decrement,
                  style: TextButton.styleFrom(
                      backgroundColor: isEmpty
                          ? Colors.black.withOpacity(0.3)
                          : Colors.white,
                      fixedSize: const Size(100, 80),
                      primary: Colors.amber,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  child: Text(
                    "Saiu",
                    style: const TextStyle(color: Colors.black, fontSize: 25),
                  )),
              SizedBox(width: 25),
              TextButton(
                  onPressed: isFull ? null : increment,
                  style: TextButton.styleFrom(
                      backgroundColor:
                          isFull ? Colors.black.withOpacity(0.3) : Colors.white,
                      fixedSize: Size(100, 80),
                      primary: Colors.amber,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  child: Text(
                    "Entrar",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  )),
            ],
          )
        ]),
      ),
    );
  }
}
