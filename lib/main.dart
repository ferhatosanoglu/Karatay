import 'package:flutter/material.dart';
import 'package:karatay/pages/ClientInfo.dart';
import 'package:karatay/pages/HomePage.dart';
import 'package:karatay/pages/ProgramListPage.dart';
import 'package:karatay/widgets/NavigationBar.dart';

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
        body: ClientInfo(),
        bottomNavigationBar: NavigationBar(),
      ),
      //MyHomePage(title: 'karatay Home Page')
    );
  }
}
