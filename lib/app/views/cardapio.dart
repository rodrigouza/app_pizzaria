import 'package:flutter/material.dart';

class Cardapio extends StatelessWidget {
  const Cardapio({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Pizza Planet')
      ),
      body: Center(
        child: Text('Página Cardápio', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold))
      )
    );
  }
}