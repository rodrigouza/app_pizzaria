// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Pizza_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //retorna ao main() toda funcionalidade estrutural/grafica do material design
    return MaterialApp(
        //Scaffold -> cria a plataforma/andaime onde o app será construido
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.red, title: Text('Pizza Planet')),
            body: Column(children: [
              Container(
                  width: double.infinity,
                  height: 275,
                  alignment: Alignment.topCenter,
                  child: Stack(children: []))
            ])));
  }
}
