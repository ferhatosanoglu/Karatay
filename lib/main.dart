import 'package:flutter/material.dart';
import 'package:karatay/pages/HomePage.dart';
import 'package:karatay/pages/LoginPage.dart';
import 'package:karatay/widgets/NavigationBar.dart';

import 'pages/SearchPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Karatay',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: LoginPage(),
        bottomNavigationBar: NavigationBar(),
      ),
      //MyHomePage(title: 'karatay Home Page')
    );
  }
}
