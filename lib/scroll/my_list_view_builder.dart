import 'package:flutter/material.dart';

class MyListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListView.Builder",
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView.Builder"),
        ),
        body: Scrollbar(
          child: ListView.builder(
              itemCount: 100,
              itemExtent: 50,
              itemBuilder: (context, index) {
                return Padding(
                  child: Text("$index"),
                  padding: EdgeInsets.only(left: 20),
                );
              }),
        ),
      ),
    );
  }
}
