import 'package:flutter/material.dart';
import 'package:flutterstartwebinar/login_screen.dart';
import 'package:flutterstartwebinar/test_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red),
      home: LoginScreen(),
    );
  }

}
