import 'package:flutter/material.dart';

class ReturnBack extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ReturnBack();
  }
}

class _ReturnBack extends State<ReturnBack> {
  DateTime _lastPress;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Container(
        alignment: Alignment.center,
        child: Text("back两次退出"),
      ),
      onWillPop: () async {
        if (null == _lastPress || DateTime.now().difference(_lastPress) > Duration(seconds: 1)) {
          _lastPress = DateTime.now();
          return false; // false = 不退出
        }
        return true; // true = 退出
      },
    );
  }
}
