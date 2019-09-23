import 'package:flutter/material.dart';

class TipRoute2 extends StatelessWidget {
  String text;

  TipRoute2({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("这是路由界面2"),
        ),
        body: new Column(
          children: <Widget>[
            new RaisedButton(
                child: new Text(text),
                onPressed: () {
                  Navigator.of(context).pop("这是界面2的返回值");
                })
          ],
        ),
      ),
    );
  }
}
