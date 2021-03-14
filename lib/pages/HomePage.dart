import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomePage extends StatefulWidget  {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var yaziStil = Theme.of(context).textTheme.bodyText1.apply(fontSizeDelta: 10);
    return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child:neumorphicButton(yaziStil,"Searching"),
        ),
        Align(
            alignment: Alignment.topRight,
            child: neumorphicButton(yaziStil,"Programs"),
            ),
        Align(
            alignment: Alignment.bottomLeft,
            child: neumorphicButton(yaziStil,"Introduce"),
        ),
        Align(
            alignment: Alignment.topRight,
            child: neumorphicButton(yaziStil, "Calorie"),
        )
      ],
            ),
          ) ,
          bottomNavigationBar: BottomAppBar(
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
          ),
        ),
    );
  }
}
NeumorphicButton neuBottomButton(icon) {
    return NeumorphicButton(
      style: NeumorphicStyle(
        depth: 5,
        color: Colors.white,
        shape: NeumorphicShape.concave,
      ),
      child: NeumorphicIcon(
        icon,
        size: 48,
        style: NeumorphicStyle(color: Colors.black45),
      ),
      onPressed: () {},
    );
  }
NeumorphicButton neumorphicButton(TextStyle yaziStil, String yazi){
  return NeumorphicButton(
    style: NeumorphicStyle(
      depth: 5,
      color: Colors.white,
      shape: NeumorphicShape.concave
    ),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        yazi,
        style: yaziStil,
      ),
    ),
    onPressed: () {},

  );
}