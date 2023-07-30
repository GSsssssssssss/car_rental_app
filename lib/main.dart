import 'package:flutter/material.dart';
import 'package:caro/screens/onboarding/onboarding.dart';
import 'package:caro/screens/homescreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen
      (),
    );
  }
}


