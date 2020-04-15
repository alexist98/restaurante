import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurante/screens/home_screen.dart';
import 'package:restaurante/screens/login_screen.dart';
import 'package:restaurante/screens/signup_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Erechim Lanches',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: Color.fromARGB(255, 4, 125, 141)),
        debugShowCheckedModeBanner: false,
        home: LoginScreen());
  }
}
