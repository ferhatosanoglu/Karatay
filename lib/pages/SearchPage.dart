import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

extension ColorExtension on String {
  toColor() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var _tfSearchData = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var yaziStil =
        Theme.of(context).textTheme.bodyText1.apply(fontSizeDelta: 10);

    return Scaffold(
      appBar: AppBar(
        title: textBox(_tfSearchData, context),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: gridDesign(yaziStil),
        ),
      ),
    );
  }

  GridView gridDesign(TextStyle yaziStil) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
      itemCount: 12,
      itemBuilder: (context, i) {
        return neuCardDesign(i, yaziStil);
        //CardDesign(i, yaziStil);
      },
    );
  }

  Widget neuCardDesign(int i, TextStyle yaziStil) {
    // return Card(
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(16),
    //   ),
    //   child: Center(
    //     child: Text(
    //       "Balik $i",
    //       style: yaziStil,
    //     ),
    //   ),
    // );
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          const Radius.circular(30),
        ),
        border: Border.all(
          color: const Color.fromRGBO(255, 255, 255, 1),
        ),
        color: '#F7F0FB'.toColor(),
        // boxShadow: const <BoxShadow>[
        //   BoxShadow(
        //     color: Color.fromRGBO(217, 210, 200, 0.51),
        //     offset: Offset(6, 6),
        //     blurRadius: 16,
        //   ),
        //   BoxShadow(
        //     color: Color.fromRGBO(255, 255, 255, 0.83),
        //     offset: Offset(-6, -6),
        //     blurRadius: 16,
        //   ),
        // ],
      ),
      child: Center(
        child: Text(
          "Balik $i",
          style: yaziStil,
        ),
      ),
    );
  }

  NeumorphicButton neuBottomButton(icon) {
    return NeumorphicButton(
      style: NeumorphicStyle(
        color: Colors.green,
        shape: NeumorphicShape.concave,
      ),
      child: NeumorphicIcon(
        icon,
        size: 48,
        style: NeumorphicStyle(color: Colors.black45),
      ),
      onPressed: () {},
    );
  }
}

Neumorphic textBox(_tfSearchData, context) {
  return Neumorphic(
    style: NeumorphicStyle(
      color: '#F7F0FB'.toColor(),
      depth: 0,
    ),
    child: TextField(
      controller: _tfSearchData,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Search',
        suffixIcon: NeumorphicIcon(
          Icons.search,
          size: 50,
          style: NeumorphicStyle(
            color: Colors.green,
          ),
        ),
      ),
      style: Theme.of(context).textTheme.bodyText1.apply(fontSizeDelta: 10),
    ),
  );
}
