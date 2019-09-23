import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "测试",
      home: new Scaffold(
        appBar: new AppBar(
          title: Text("测试"),
        ),
        body: new Center(
          child: Text(
            "hellor world,haha",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 15,
            ),
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}
