import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          neuBottomButton(Icons.settings, 'settings', context), //Settings
          neuBottomButton(Icons.home, 'home', context), //Home
          neuBottomButton(Icons.list, 'list', context), //Diet List
        ],
      ),
    );
  }
}

Widget neuBottomButton(icon, data, context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: NeumorphicButton(
      style: NeumorphicStyle(
        color: Colors.white,
        shape: NeumorphicShape.concave,
      ),
      child: NeumorphicIcon(
        icon,
        size: 48,
        style: NeumorphicStyle(color: Colors.black45),
      ),
      onPressed: () {
        var route;
        switch (data) {
          case 'settings':
            route = '/clientinfo';
            break;
          case 'home':
            route = '/home';
            break;
          case 'list':
            route = '/dietlist';
            break;
        }
        Navigator.pushNamed(context, route);
      },
    ),
  );
}
