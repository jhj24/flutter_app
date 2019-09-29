import 'package:flutter/material.dart';

class MyTheme extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyTheme();
  }
}

class _MyTheme extends State<MyTheme> {
  Color _themeColor = Colors.teal;

  @override
  Widget build(BuildContext context) {
    ThemeData _themeData = Theme.of(context);

    return Theme(
      data: ThemeData(
          primarySwatch: _themeColor,
          iconTheme: IconThemeData(color: _themeColor)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Theme切换"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.favorite),
                Icon(Icons.airport_shuttle),
                Text("  颜色跟随主题")
              ],
            ),
            Theme(
              data: _themeData.copyWith(
                  iconTheme:
                      _themeData.iconTheme.copyWith(color: Colors.black)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.favorite),
                  Icon(Icons.airport_shuttle),
                  Text("  颜色固定黑色")
                ],
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.palette),
          onPressed: () {
            setState(
              () {
                _themeColor =
                    _themeColor == Colors.teal ? Colors.blue : Colors.teal;
              },
            );
          },
        ),
      ),
    );
  }
}
