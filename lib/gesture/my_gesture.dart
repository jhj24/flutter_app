import 'package:flutter/material.dart';

class MyGesture extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyGesture();
  }
}

class _MyGesture extends State<MyGesture> {
  String _operation = "单击、双击、长按事件";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gesture"),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.blue,
                  width: 200.0,
                  height: 100.0,
                  child: Text(
                    _operation,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                onTap: () => _updateText("单击"),
                onDoubleTap: () => _updateText("双击"),
                onLongPress: () => _updateText("长按"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _updateText(String text) {
    setState(() {
      _operation = text;
    });
  }
}
