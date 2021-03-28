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
    var size = MediaQuery.of(context).size;
    return new Scaffold(
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
        child: Column(
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
            Container(
              height: 60,
              width: 300,
              //padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                    ),
                  ]),
              child: TextField(
                style: TextStyle(
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(Icons.person_outline, color: Colors.green),
                  hintText: "Name",
                  hintStyle: TextStyle(color: Colors.black26),
                ),
              ),
            ),
            Container(
              height: 60,
              width: 300,
              //padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                    ),
                  ]),
              child: TextField(
                style: TextStyle(
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(Icons.email, color: Colors.green),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.black26),
                ),
              ),
            ),
            Container(
              height: 60,
              width: 300,
              //padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                    ),
                  ]),
              child: TextField(
                style: TextStyle(
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(Icons.cake, color: Colors.green),
                  hintText: 'Age',
                  hintStyle: TextStyle(color: Colors.black26),
                ),
              ),
            ),
            Container(
              height: 60,
              width: 300,
              //padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                    ),
                  ]),
              child: TextField(
                style: TextStyle(
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 20),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: FaIcon(FontAwesomeIcons.rulerVertical,
                        color: Colors.green),
                  ),
                  hintText: 'Size (cm)',
                  hintStyle: TextStyle(color: Colors.black26),
                ),
              ),
            ),
            Container(
              height: 60,
              width: 300,
              //padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                    ),
                  ]),
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                style: TextStyle(
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 20),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: FaIcon(FontAwesomeIcons.weight, color: Colors.green),
                  ),
                  hintText: 'Kilo (kg)',
                  hintStyle: TextStyle(color: Colors.black26),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildLoginBtn(BuildContext context, String message) {
  return SizedBox(
    width: 315,
    child: RaisedButton(
      elevation: 5, //hat
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
      },
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25) //kösegenleri yumuşatır
          ),
      color: Colors.green,
      child: Text(
        message,
        style: TextStyle(
          //color: Color(0xff5ac18e),
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
