import 'package:flutter/material.dart';

class MyInheritedWidget extends InheritedWidget {
  MyInheritedWidget({@required this.data, Widget child}) : super(child: child);

  final int data;

  static MyInheritedWidget of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(MyInheritedWidget);
  }

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return oldWidget.data != data;
  }
}

class InheritedWidgetTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InheritedWidgetTest();
  }
}

class _InheritedWidgetTest extends State<InheritedWidgetTest> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("数据共享"),
      ),
      body: Center(
        child: MyInheritedWidget(
          data: count,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text("$count"),
              ),
              RaisedButton(
                  child: Text("increment"),
                  onPressed: () => setState(() => ++count)),
            ],
          ),
        ),
      ),
    );
  }
}
