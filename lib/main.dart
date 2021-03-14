import 'package:karatay/pages/HomePage.dart';
import 'package:karatay/pages/SearchPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Karatay',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      //MyHomePage(title: 'karatay Home Page')
    );
  }
}

