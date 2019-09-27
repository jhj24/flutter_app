import 'package:flutter/material.dart';

class MyListViewSeparated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _divider1 = Divider(
      color: Colors.teal,
    );
    var _divider2 = Divider(
      color: Colors.orange,
    );
    return MaterialApp(
      title: "ListView.Separated",
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView.Separated"),
        ),
        body: Scrollbar(
          child: ListView.separated(
            itemCount: 100,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("$index"),
              );
            },
            separatorBuilder: (context, index) {
              return index % 2 == 0 ? _divider1 : _divider2;
            },
          ),
        ),
      ),
    );
  }
}
