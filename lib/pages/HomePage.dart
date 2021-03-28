import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:karatay/widgets/NavigationBar.dart';

extension ColorExtension on String {
  toColor() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var yaziStil =
        Theme.of(context).textTheme.bodyText1.apply(fontSizeDelta: 10);
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0x665ac18e),
              Color(0x995ac18e),
              Color(0xcc5ac18e),
              Color(0xff5ac18e),
            ])),
        child: Padding(
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
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }
}

Widget neumorphicButton(
    TextStyle yaziStil, String yazi, size, BuildContext context) {
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
          route = '/camera';
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
          color: Color(0xF7F0FB),
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
