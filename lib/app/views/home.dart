import 'package:app_pizzaria/app/views/cardapio.dart';
import 'package:app_pizzaria/app/views/delivery.dart';
import 'package:app_pizzaria/app/views/fidelidade.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Pizza Planet')),

          body: Column(children: [                
            Container(
              width: double.infinity,
              height: 275,
              alignment: Alignment.topCenter,
              child: Stack(children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Image.network('https://img.freepik.com/fotos-gratis/pepperoni-apetitoso-italiano-da-pizza-com-salam_219193-1244.jpg', fit: BoxFit.fill)),
              
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        width: double.infinity,
                        height: 80,
                        color: Color.fromARGB(130, 0, 0, 0),
                        child: Column(
                        children:[
                          Text('Quem prova não esquece', textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold)),
              
                          Text('Pepperoni',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.red, fontSize: 30.0, fontWeight: FontWeight.bold))
                        ])
                      )),
                  ])),
                        
                Container(
                height: 320,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                      
                      ElevatedButton.icon(onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Delivery()));
                      },
                      label: Text('Delivery',
                      style: TextStyle(fontSize: 36.0, color: Colors.black, fontWeight: FontWeight.bold)),
                      icon: Icon(Icons.delivery_dining, size: 70.0, color: Colors.black45),
                      style: ButtonStyle(
                      alignment: Alignment.centerLeft,
                      backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.redAccent),
                      minimumSize: MaterialStateProperty.all(Size(390,90))
                      )),
                      
                      ElevatedButton.icon(onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Fidelidade()));
                      },
                      label: Text('Fidelidade',
                      style: TextStyle(fontSize: 36.0, color: Colors.black, fontWeight: FontWeight.bold)),
                      icon: Icon(Icons.heart_broken, size: 70.0, color: Colors.black26),
                      style: ButtonStyle(
                      alignment: Alignment.centerLeft,
                      backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.lightBlueAccent),
                      minimumSize: MaterialStateProperty.all(Size(390,90))
                      )),
            
                      ElevatedButton.icon(onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Cardapio()));
                      },
                      label: Text('Cardápio',
                      style: TextStyle(fontSize: 36.0, color: Colors.black, fontWeight: FontWeight.bold)),
                      icon: Icon(Icons.menu_book, size: 70.0, color: Colors.black45),
                      style: ButtonStyle(
                      alignment: Alignment.centerLeft,
                      backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.lightGreenAccent),
                      minimumSize: MaterialStateProperty.all(Size(390,90))
                      ))
                  ]),
              ),
                           
          ])
    ));
  }
}
