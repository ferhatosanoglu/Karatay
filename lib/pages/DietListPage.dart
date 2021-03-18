import 'package:flutter/material.dart';

class DietListPage extends StatefulWidget {
  @override
  _DietListPage createState() => _DietListPage();
}

class _DietListPage extends State<DietListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: buildBody(context),
    );
  }
}

Widget buildBody(BuildContext context) {
  var size = MediaQuery.of(context).size;
  return Column(
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
          child: builListView(context, size),
        ),
      )
    ],
  );
}

Widget builListView(BuildContext context, var size) {
  return ListView.separated(
    padding: const EdgeInsets.all(45.0),
    itemCount: 3,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(20.0),
        height: size.height / 4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Container(
          child: Text("Haloo"), // Datadan tablolar gelicek
          alignment: Alignment.center,
        ),
      );
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
  );
}
