import 'package:flutter/material.dart';
import 'package:karatay/pages/CalorieCalculationPage.dart';

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
        body: CalorieCalculationPage(),
        //bottomNavigationBar: NavigationBar(),
      ),
      //MyHomePage(title: 'karatay Home Page')
    );
  }
}
