// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Cardapio extends StatelessWidget {
  const Cardapio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Cardápio')
      ),

      body: GridView.count(
        padding: EdgeInsets.all(15),
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        crossAxisCount: 2,
        children: [

          Container(
            //padding: const EdgeInsets.all(4),
            child: Stack(alignment: Alignment.bottomCenter,
              children: [
              Image.asset('assets/images/pizza-calabresa.jpg', width: double.infinity, height: double.infinity, fit: BoxFit.cover),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 40.0,
                color: Color.fromARGB(90, 0, 0,0),
                child: Text('Calabresa', style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold)))
            ])
          ),

          Container(
            //padding: const EdgeInsets.all(4),
            child: Stack(alignment: Alignment.bottomCenter,
              children: [
              Image.asset('assets/images/pizza-caprese.jpg', width: double.infinity, height: double.infinity, fit: BoxFit.cover),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 40.0,
                color: Color.fromARGB(90, 0, 0,0),
                child: Text('Caprese', style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold)))
            ])
          ),

          Container(
            //padding: const EdgeInsets.all(4),
            child: Stack(alignment: Alignment.bottomCenter,
              children: [
              Image.asset('assets/images/pizza-margherita.jpg', width: double.infinity, height: double.infinity, fit: BoxFit.cover),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 40.0,
                color: Color.fromARGB(90, 0, 0,0),
                child: Text('Margherita', style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold)))
            ])
          ),

          Container(
            //padding: const EdgeInsets.all(4),
            child: Stack(alignment: Alignment.bottomCenter,
              children: [
              Image.asset('assets/images/pizza-pepperoni.png', width: double.infinity, height: double.infinity, fit: BoxFit.cover),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 40.0,
                color: Color.fromARGB(90, 0, 0,0),
                child: Text('Pepperoni', style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold)))
            ])
          ),

          Container(
            //padding: const EdgeInsets.all(4),
            child: Stack(alignment: Alignment.bottomCenter,
              children: [
              Image.asset('assets/images/pizza-portuguesa.jpg', width: double.infinity, height: double.infinity, fit: BoxFit.cover),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 40.0,
                color: Color.fromARGB(90, 0, 0,0),
                child: Text('Portuguesa', style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold)))
            ])
          ),

          Container(
            //padding: const EdgeInsets.all(4),
            child: Stack(alignment: Alignment.bottomCenter,
              children: [
              Image.asset('assets/images/pizza-rucula-tomate-seco.jpg', width: double.infinity, height: double.infinity, fit: BoxFit.cover),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 40.0,
                color: Color.fromARGB(90, 0, 0,0),
                child: Text('Rúcula com Tomate Seco', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold)))
            ])
          ),
        ],
      ),
    );
  }
}