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
        color: Colors.white,
        shape: NeumorphicShape.concave,
      ),
      child: NeumorphicIcon(
        icon,
        size: 48,
        style: NeumorphicStyle(color: Colors.black45),
      ),
      onPressed: () {},
    ),
  );
}
