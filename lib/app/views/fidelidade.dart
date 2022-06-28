// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Fidelidade extends StatefulWidget {
  const Fidelidade({Key? key}) : super(key: key);

  @override
  State<Fidelidade> createState() => _FidelidadeState();
}

class _FidelidadeState extends State<Fidelidade> {
 
final _formKey = GlobalKey <FormState>();

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Fidelidade')
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('Cadastre-se para acumular pontos de fidelidade', textAlign: TextAlign.center, style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
            ),

            //Campo nome completo
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText:'Nome completo'
                ),

                validator: (value) {
                  //testa se o campo está vazio.
                  if (value == null || value.isEmpty) {
                    return 'Preenchimento obrigatório';
                  }
                  return null;
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText:'Telefone'
                ),

                validator: (value) {
                  //testa se o campo está vazio.
                  if (value == null || value.isEmpty) {
                    return 'Preenchimento obrigatório';
                  }
                  return null;
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText:'Email'
                ),

                validator: (value) {
                  //testa se o campo está vazio.
                  if (value == null || value.isEmpty) {
                    return 'Preenchimento obrigatório';
                  }
                  return null;
                },
              ),
            ),

            ElevatedButton(
              onPressed: () {
                //A validação retorna 'true' se o form é valido
                if (_formKey.currentState!.validate()) {
                //Se o form é valido, mostra uma 'snackbar'.
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Enviando...')));
                }
              },
              child: const Text('Enviar')
            )

          ],
        ),
      )
    );
  }
}