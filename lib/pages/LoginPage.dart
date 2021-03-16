// ignore: unused_import

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KARATAY"),
      ),
      body: buildBody(context),
    );
  }
}

Widget buildBody(BuildContext context) {
  String message = "Sign In";
  return AnnotatedRegion(
    value: SystemUiOverlayStyle.light,
    child: GestureDetector(
      child: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color(0x665ac18e),
                  Color(0x665ac18e),
                  Color(0x665ac18e),
                  Color(0x665ac18e),
                ])),
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(), //
              padding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 120,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    message,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  builmain(context, "Email"),
                  SizedBox(
                    height: 50,
                  ),
                  builmain(context, "Password"),
                  builForgotPassBtn(context, "Forgot Password?"),
                  buildLoginBtn(context, "Login"),
                  builSignUpBtn(context, "Don't have an Account? Sign Up"),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget builForgotPassBtn(context, String message) {
  return Container(
    alignment: Alignment.centerRight,
    // ignore: deprecated_member_use
    child: FlatButton(
      onPressed: () => print("Forgot Password Pressed"),
      padding: EdgeInsets.only(right: 2),
      child: Text(
        message,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget builSignUpBtn(context, String message) {
  return Container(
    alignment: Alignment.centerRight,
    // ignore: deprecated_member_use
    child: FlatButton(
      onPressed: () => print("Sign Up Pressed"),
      padding: EdgeInsets.only(right: 2),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: message,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          )
        ]),
      ),
    ),
  );
}

Widget builmain(BuildContext context, String message) {
  return Column(
    children: <Widget>[
      Center(
        child: Container(
          height: 60,
          //padding: const EdgeInsets.all(8.0),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Color(0x84CC16),
              borderRadius: BorderRadius.circular(29),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  //blurRadius: 6, // buğulu kenarlar
                  offset: Offset(0, 2),
                ),
              ]),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: buildIcon(message),
              hintText: message,
              hintStyle: TextStyle(color: Colors.black26),
            ),
          ),
        ),
      )
    ],
  );
}

Widget buildIcon(String message) {
  if (message == "Password") {
    return Icon(Icons.lock, color: Color(0xff5ac18e));
  } else {
    return Icon(Icons.email, color: Color(0xff5ac18e));
  }
}

Widget buildLoginBtn(BuildContext context, String message) {
  return Container(
    // ignore: deprecated_member_use
    child: RaisedButton(
      elevation: 5, //hat
      onPressed: () => print(message + " Pressed"),
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15) //kösegenleri yumuşatır
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
