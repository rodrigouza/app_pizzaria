// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_pizzaria/app/views/cardapio.dart';
import 'package:app_pizzaria/app/views/delivery.dart';
import 'package:app_pizzaria/app/views/fidelidade.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('Pizza Planet')),

          body: Column(children: [
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset('assets/images/forno-lenha.jpg', width: double.infinity, height: double.infinity, fit: BoxFit.fill),

                Container(
                  alignment: Alignment.bottomCenter,
                  width: double.infinity,
                  height: 70,
                  color: Color.fromARGB(130, 0, 0,0),
                  child: Column(children: [
                    Text('Pizza Planet', textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.bold)),
              
                    Text('Quem prova não esquece', textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.redAccent, fontSize: 30.0, fontWeight: FontWeight.bold))]
                    )
                  ),
              ])
            ),

            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  ElevatedButton.icon(onPressed:  () => {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Cardapio()))}, label: Text('Cardápio', style: TextStyle(fontSize: 36.0, color: Colors.black, fontWeight: FontWeight.bold)),icon: Icon(Icons.menu_book, size: 70.0, color: Colors.black45), style: ButtonStyle(alignment: Alignment.centerLeft, backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.redAccent), minimumSize: MaterialStateProperty.all(Size(390,90)))
                  ),

                  ElevatedButton.icon(onPressed:  () => {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Fidelidade()))},  label: Text('Fidelidade', style: TextStyle(fontSize: 36.0, color: Colors.black, fontWeight: FontWeight.bold)),icon: Icon(Icons.heart_broken, size: 70.0, color: Colors.black45), style: ButtonStyle(alignment: Alignment.centerLeft, backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.lightGreenAccent), minimumSize: MaterialStateProperty.all(Size(390,90)))
                  ),

                  ElevatedButton.icon(onPressed:  () => {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Delivery()))},  label: Text('Delivery', style: TextStyle(fontSize: 36.0, color: Colors.black, fontWeight: FontWeight.bold)),icon: Icon(Icons.delivery_dining, size: 70.0, color: Colors.black45), style: ButtonStyle(alignment: Alignment.centerLeft, backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.lightBlueAccent), minimumSize: MaterialStateProperty.all(Size(390,90)))
                  )
              ])
            )
          ])
      )
    );
  }
}
