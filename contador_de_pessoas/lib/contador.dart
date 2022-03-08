import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({Key? key}) : super(key: key);

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/transferir.jpg'))),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Pode entrar!", style: TextStyle(fontSize: 30)),
            SizedBox(height: 60),
            Text("0", style: TextStyle(fontSize: 80)),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("1")),
                SizedBox(width: 20),
                ElevatedButton(onPressed: () {}, child: Text("1")),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
