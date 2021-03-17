import 'package:flutter/material.dart';

class CalorieCalculationPage extends StatefulWidget {
  @override
  _CalorieCalculationPage createState() => _CalorieCalculationPage();
}

class _CalorieCalculationPage extends State<CalorieCalculationPage> {
  int selected = 1;

  setSelectedRadio(int val) {
    setState(() {
      selected = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
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
              child: Container(
                color: Colors.white,
                width: size.width / 3,
                height: size.height / 3,
                child: buildColumn(size),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildColumn(size) {
    return Container(
      width: size.width,
      height: size.height,
      color: Color(0xFF0E3311).withOpacity(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RadioListTile(
            value: 1,
            groupValue: selected,
            title: Text("Kadın"),
            activeColor: Colors.black,
            onChanged: (val) {
              print("Kadın $val");
              setSelectedRadio(val);
            },
          ),
          RadioListTile(
            value: 2,
            groupValue: selected,
            title: Text("Erkek"),
            activeColor: Colors.black,
            onChanged: (val) {
              print("Erkek $val");
              setSelectedRadio(val);
            },
          ),
        ],
      ),
    );
  }
}
