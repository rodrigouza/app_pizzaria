// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Pizza_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red,
              title: const Text("Pizza Planet"),
            ),
            body: Column(children: [
              Container(
                  width: double.infinity,
                  height: 275,
                  alignment: Alignment.topCenter,
                  child: Stack(children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            child: Image.network(
                                "https://pizzariadesucesso.com/wp-content/uploads/2018/05/pepperoni-pizza.jpg"))),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            alignment: Alignment.bottomCenter,
                            height: 60,
                            color: Color.fromARGB(130, 0, 0, 0),
                            child: Text("Quem prova não esquece \n Pepperoni",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ))))
                  ])),
              Column(
                children: [
                  Container(
                    height: 15,
                  ),
                  Align(
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          label:
                              Text('Delivery', style: TextStyle(fontSize: 36)),
                          icon: Icon(Icons.motorcycle, size: 68),
                          style: ButtonStyle(
                              alignment: Alignment.centerLeft,
                              backgroundColor:
                                  MaterialStateProperty.resolveWith(
                                      (states) => Colors.redAccent),
                              minimumSize:
                                  MaterialStateProperty.all(Size(390, 90))))),
                  Container(
                    height: 15,
                  ),
                  Align(
                      child: ElevatedButton.icon(
                    onPressed: () {},
                    label: Text('Fidelidade', style: TextStyle(fontSize: 36)),
                    icon: Icon(Icons.heart_broken, size: 68),
                    style: ButtonStyle(
                        alignment: Alignment.centerLeft,
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => Colors.lightGreen),
                        minimumSize: MaterialStateProperty.all(Size(390, 90))),
                  )),
                  Container(
                    height: 15,
                  ),
                  Align(
                      child: ElevatedButton.icon(
                    onPressed: () {},
                    label: Text('Cardápio', style: TextStyle(fontSize: 36)),
                    icon: Icon(Icons.menu, size: 68),
                    style: ButtonStyle(
                        alignment: Alignment.centerLeft,
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => Colors.lightBlue),
                        minimumSize: MaterialStateProperty.all(Size(390, 90))),
                  )),
                ],
              )
            ])));
  }
}