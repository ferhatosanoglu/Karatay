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

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color(0xff5ac18e),
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
        depth: 0,
        color: '#F7F0FB'.toColor(),
        shape: NeumorphicShape.concave,
      ),
      child: NeumorphicIcon(
        icon,
        size: 48,
        style: NeumorphicStyle(color:Colors.green ),
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
