import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddFood extends StatefulWidget {
  @override
  _AddFoodState createState() => _AddFoodState();
}

class _AddFoodState extends State<AddFood> {
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
              Container(
                height: 60,
                width: 300,
                alignment: Alignment.centerRight,
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
                    hintText: "Uploading Picture",
                    hintStyle: TextStyle(color: Colors.black26),
                    contentPadding: EdgeInsets.only(top: 14, left: 0),
                    prefixIcon: Icon(Icons.upload_file, color: Colors.green),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
