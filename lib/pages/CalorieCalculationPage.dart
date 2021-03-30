import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:karatay/widgets/NavigationBar.dart';

class CalorieCalculationPage extends StatefulWidget {
  @override
  _CalorieCalculationPageState createState() => _CalorieCalculationPageState();
}

class _CalorieCalculationPageState extends State<CalorieCalculationPage> {
  var tfAge = TextEditingController();
  var tfHeight = TextEditingController();
  var tfWeight = TextEditingController();
  int radiovalue = 1;
  double calorie = 0;
  void calculateCalorie() {
    if (radiovalue == 1) {
      calorie = 66 +
          (13.7 * (double.tryParse(tfWeight.text))) +
          (5 * (double.tryParse(tfHeight.text))) -
          (6.8 * (double.tryParse(tfAge.text)));
    } else if (radiovalue == 2) {
      calorie = 655 +
          (9.6 * (double.tryParse(tfWeight.text))) +
          (1.8 * (double.tryParse(tfHeight.text))) -
          (4.7 * (double.tryParse(tfAge.text)));
    } else {
      calorie = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromRGBO(142, 198, 159, 1),
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
              controller: tfAge,
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
              controller: tfHeight,
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
                hintText: 'Height (cm)',
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
              controller: tfWeight,
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
                hintText: 'Weight (kg)',
                hintStyle: TextStyle(color: Colors.black26),
              ),
            ),
          ),
          buildLoginBtn(context, 'Calculate Calorie'),
          calorie != 0
              ? Center(
                  child: Text(
                    '${calorie.toStringAsFixed(2)} J',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32.0,
                        fontWeight: FontWeight.w300),
                  ),
                )
              : Center(),
        ],
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }

  Widget buildLoginBtn(BuildContext context, String message) {
    return SizedBox(
      width: 315,
      child: RaisedButton(
        elevation: 5, //hat
        onPressed: () {
          calculateCalorie();
          setState(() {});
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
}
