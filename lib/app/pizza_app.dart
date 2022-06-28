// ignore_for_file: camel_case_types, use_key_in_widget_constructors, prefer_const_constructors

import 'package:app_pizzaria/app/views/home.dart';
import 'package:flutter/material.dart';

class Pizza_App extends StatelessWidget {
  const Pizza_App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home());
  }
}