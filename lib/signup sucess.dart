import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signupsucess extends StatefulWidget {
  const signupsucess({super.key});

  @override
  State<signupsucess> createState() => _signupsucessState();
}

class _signupsucessState extends State<signupsucess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Sign Up SucessFully',selectionColor: Colors.blueAccent,)));
  }
}

