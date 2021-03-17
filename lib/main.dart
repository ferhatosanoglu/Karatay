import 'package:flutter/material.dart';
import 'package:karatay/pages/DietListPage.dart';

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
        body: DietListPage(),
        //bottomNavigationBar: NavigationBar(),
      ),
      //MyHomePage(title: 'karatay Home Page')
    );
  }
}
