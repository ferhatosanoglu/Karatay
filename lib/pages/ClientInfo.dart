import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ClientInfo extends StatefulWidget {
  @override
  _ClientInfoState createState() => _ClientInfoState();
}

class _ClientInfoState extends State<ClientInfo> {
  int radiovalue = 1;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NeumorphicRadio(
                onChanged: (int i) {
                  setState(() {
                    radiovalue = i;
                  });
                },
                groupValue: radiovalue,
                padding: EdgeInsets.all(18.0),
                child: FaIcon(FontAwesomeIcons.marsStrokeV,
                    size: 50, color: Colors.green),
                value: 1,
                style: NeumorphicRadioStyle(
                    unselectedColor: Colors.grey.shade300,
                    selectedColor: Colors.black),
              ),
              NeumorphicRadio(
                onChanged: (int i) {
                  setState(() {
                    radiovalue = i;
                  });
                },
                groupValue: radiovalue,
                padding: EdgeInsets.all(18.0),
                child: FaIcon(FontAwesomeIcons.venus,
                    size: 50, color: Colors.green),
                value: 2,
                style: NeumorphicRadioStyle(
                    unselectedColor: Colors.grey.shade300,
                    selectedColor: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
