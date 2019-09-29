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
      child: MaterialApp(
        title: "",
        home: Scaffold(
          appBar: AppBar(
            title: Text("返回键监听"),
          ),
          body: Container(
            alignment: Alignment.center,
            child: Text("1s内连续点击两次时，退出界面"),
          ),
        ),
      ),
      onWillPop: () async {
        if (null == _lastPress ||
            DateTime.now().difference(_lastPress) > Duration(seconds: 1)) {
          _lastPress = DateTime.now();
          return false; // false = 不退出
        }
        return true; // true = 退出
      },
    );
  }
}
