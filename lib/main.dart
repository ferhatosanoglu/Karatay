import 'package:karatay/pages/SearchPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diyetin',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SearchPage(),
      //MyHomePage(title: 'karatay Home Page')
    );
  }
}
