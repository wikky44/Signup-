
import 'package:flutter/material.dart';
import 'package:signup/page%20one.dart';
import 'package:signup/signup%20reg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up',debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: pageone(),
    );
  }
}
