import 'package:flutter/material.dart';
import 'package:fluttersampleapp/carousel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: CardList(),
      ),
    );
  }
}
