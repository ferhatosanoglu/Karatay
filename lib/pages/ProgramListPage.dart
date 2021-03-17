import 'package:flutter/material.dart';

class ProgramListPage extends StatefulWidget {
  @override
  _ProgramListPageState createState() => _ProgramListPageState();
}

class _ProgramListPageState extends State<ProgramListPage> {
  List<String> days = <String>[
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: days.length,
      itemBuilder: (context, i) {
        return Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ExpansionTile(
            trailing: SizedBox.shrink(),
            title: Center(
                child: Padding(
              padding: EdgeInsets.symmetric(vertical: size.height / 40),
              child: Text(days[i],
                  style: Theme.of(context).textTheme.bodyText1.apply(fontSizeDelta: 20)),
            )),
            children: [
              subTile(days[i], context),
            ],
          ),
        );
      },
    );
  }
}

Widget subTile(String time, context) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: 300,
      child: Card(
        child: Center(child: Text(time, style: Theme.of(context).textTheme.headline2)),
      ),
    ),
  );
}
