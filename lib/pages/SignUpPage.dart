// ignore: unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:karatay/pages/HomePage.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPage createState() => _SignUpPage();
}

class _SignUpPage extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: buildBody(context),
    );
  }
}

Widget buildBody(BuildContext context) {
  String message = "Sign In";
  var size = MediaQuery.of(context).size;
  return Column(
    children: <Widget>[
      Container(
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
              height: size.height / 15,
            ),
            builmain(context, "Email"),
            SizedBox(
              height: size.height / 15,
            ),
            builmain(context, "Password"),
            builForgotPassBtn(context, "Forgot Password?"),
            SizedBox(
              height: size.height / 50,
            ),
            buildLoginBtn(context, "Login"),
            builSignUpBtn(context, "Don't have an Account? Sign Up"),
            SizedBox(
              height: size.height / 50,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                "-------------------- OR -----------------------",
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.facebook,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: FaIcon(
                    FontAwesomeIcons.twitter,
                    color: Colors.white,
                  ),
                ),
                FaIcon(
                  FontAwesomeIcons.google,
                  color: Colors.white,
                )
              ],
            )
          ],
        ),
      ),
    ],
  );
}

Widget builForgotPassBtn(context, String message) {
  return Container(
    alignment: Alignment.centerRight,
    // ignore: deprecated_member_use
    child: FlatButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      },
      padding: EdgeInsets.only(right: 50),
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
    alignment: Alignment.center,
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
          width: 325,
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
  return SizedBox(
    width: 315,
    child: RaisedButton(
      elevation: 5, //hat
      onPressed: () {
        print(message + " Pressed");
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
