import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

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
    List<String> message = ["Length", "Weight"];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Center(
            child: Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0x665ac18e),
                    Color(0x995ac18e),
                    Color(0xcc5ac18e),
                    Color(0xff5ac18e),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildButton(size),
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildText(size, message[0]),
                          SizedBox(
                            height: size.height / 15,
                          ),
                          buildInput(size),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Row(
                        children: [
                          buildInput(size),
                          SizedBox(
                            height: size.height / 15,
                          ),
                          buildText(size, message[1]),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButton(size) {
    return Container(
      width: size.width / 3,
      height: size.height / 3,
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

  Widget buildText(size, message) {
    return Expanded(
      child: Center(
        child: Container(
          child: Text(message),
        ),
      ),
    );
  }
}

Widget buildInput(size) {
  return Expanded(
    child: Container(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          hintText: " ",
          filled: true,
          fillColor: Colors.white,
        ),
        keyboardType: TextInputType.number,
        style: TextStyle(
          color: Colors.black87,
        ),
      ),
    ),
  );
}
