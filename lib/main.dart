import 'package:flutter/material.dart';
import 'package:karatay/pages/DietListPage.dart';
import 'package:karatay/pages/ClientInfo.dart';
import 'package:karatay/pages/HomePage.dart';
import 'package:karatay/pages/LoginPage.dart';
import 'package:karatay/pages/SignUpPage.dart';
import 'package:karatay/pages/ProgramListPage.dart';
import 'package:karatay/widgets/NavigationBar.dart';
import 'package:karatay/pages/WelcomePage.dart';

void main() {
  Paint.enableDithering = true;
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
        body: WelcomePage(),
        //bottomNavigationBar: NavigationBar(),
      ),
      //MyHomePage(title: 'karatay Home Page')
    );
  }
}
