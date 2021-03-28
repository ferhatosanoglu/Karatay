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
          neuBottomButton(Icons.settings), //Settings
          neuBottomButton(Icons.home), //Home
          neuBottomButton(Icons.list), //Diet List
        ],
      ),
    );
  }
}

Widget neuBottomButton(icon) {
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
      onPressed: () {},
    ),
  );
}
