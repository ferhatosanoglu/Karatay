import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

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

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    var yaziStil =
        Theme.of(context).textTheme.bodyText1.apply(fontSizeDelta: 10);

    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Container(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 100),
                  child: Text(
                    'Welcome to KARATAY',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 48.0,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              Center(
                child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    child: neumorphicButton(yaziStil, "Sign In", context)),
              ),
              Center(
                child: neumorphicButton(yaziStil, 'Sign Up', context),
              ),
            ],
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0x665ac18e),
                  Color(0x995ac18e),
                  Color(0xcc5ac18e),
                  Color(0xff5ac18e),
                ]),
          ),
        ),
      )),
    );
  }
}

NeumorphicButton neumorphicButton(
    TextStyle yaziStil, String yazi, BuildContext context) {
  return NeumorphicButton(
    style: NeumorphicStyle(
      depth: 0,
      color: Colors.white,
      shape: NeumorphicShape.concave,
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 5),
      child: Text(
        yazi,
        style: yaziStil,
      ),
    ),
    onPressed: () {
      var route = yazi == "Sign In" ? '/signin' : '/signup';
      Navigator.pushNamed(context, route);
    },
  );
}
