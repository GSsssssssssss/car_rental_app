import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {


  @override
  __HomeScreenState createState() => __HomeScreenState();
}

class __HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back))
        ],
      ),
    );
  }
}