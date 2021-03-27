import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:karatay/widgets/NavigationBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var yaziStil = Theme.of(context).textTheme.bodyText1.apply(fontSizeDelta: 10);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: neumorphicButton(yaziStil, "Scan Food", size, context),
            ),
            Align(
              alignment: Alignment.topRight,
              child: neumorphicButton(yaziStil, "Programs", size, context),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: neumorphicButton(yaziStil, "Searching", size, context),
            ),
            Align(
              alignment: Alignment.topRight,
              child: neumorphicButton(yaziStil, "Calorie", size, context),
            )
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }
}

Widget neumorphicButton(TextStyle yaziStil, String yazi, size, BuildContext context) {
  return GestureDetector(
    onTap: () {
      var route;
      switch (yazi) {
        case 'Searching':
          route = '/search';
          break;
        case 'Programs':
          route = '/dietlist';
          break;
        case 'Scan Food':
          //Set Camera
          break;
        case 'Calorie':
          route = '/caloriecalc';
          break;
      }
      Navigator.pushNamed(context, route);
    },
    child: Container(
      width: size.width / 1.75,
      height: size.height / 5.5,
      child: Neumorphic(
        style: NeumorphicStyle(
          depth: 0,
          color: Colors.white,
          shape: NeumorphicShape.concave,
        ),
        child: Center(
          child: Text(
            yazi,
            style: yaziStil,
          ),
        ),
      ),
    ),
  );
}
