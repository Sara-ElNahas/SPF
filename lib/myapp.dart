import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'myhome.dart';

class MySPF extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String title ;
    if (kIsWeb)
      {
        title = "Flutter in Web";
      }
    else
      {
        title = "Flutter in Mobile";
      }
    return MaterialApp(
      title: 'Smart Poultry Farm',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHome(title),
    );
  }
}