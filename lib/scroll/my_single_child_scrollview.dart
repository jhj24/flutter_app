import 'package:flutter/material.dart';

class MySingleChildScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _alphabet = "ABCDEFGHIJKLMNOPQRST";
    var array = _alphabet.split("");
    return MaterialApp(
        title: "",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Alphabet"),
            ),
            body: Scrollbar(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(children: _childrenWidget(array)),
                ),
              ),
            )));
  }

  List<Widget> _childrenWidget(List<String> list) {
    var resultList = List<Widget>();
    for (var value in list) {
      resultList.add(Padding(
        padding: EdgeInsets.all(20),
        child: Text("$value"),
      ));
    }
    return resultList;
  }
}
