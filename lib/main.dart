import 'package:karatay/pages/HomePage.dart';
import 'package:karatay/pages/SearchPage.dart';
import 'package:flutter/material.dart';
import 'package:karatay/pages/WelcomePage.dart';

import 'pages/HomePage.dart';
import 'pages/HomePage.dart';

void main() {
  Paint.enableDithering=true;
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
      home: WelcomePage(),
      //MyHomePage(title: 'karatay Home Page')
    );
  }
}

