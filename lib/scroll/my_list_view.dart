import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "默认构造方式的ListView",
      home: Scaffold(
        appBar: AppBar(
          title: Text("默认构造方式的ListView"),
        ),
        body: Center(
          child: Scrollbar(
              child: ListView(
            children: _list(),
          )),
        ),
      ),
    );
  }

  List<Widget> _list() {
    var _str = "abcdefghigklmnopqrstuvwxyz";
    var _list = _str.split("");
    var _resultList = List<Widget>();
    for (var value in _list) {
      _resultList.add(Padding(padding: EdgeInsets.all(20),child:Text("$value")));
    }
    return _resultList;
  }
}
