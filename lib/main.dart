import 'package:flutter/material.dart';
import 'package:flutter_app/input/input_text.dart';
import 'package:flutter_app/input/input_text_validate.dart';
import 'package:flutter_app/my_decorated_box.dart';
import 'package:flutter_app/my_progress_indicator.dart';
import 'package:flutter_app/my_scaffold.dart';
import 'package:flutter_app/my_tab_bar.dart';
import 'package:flutter_app/my_transform.dart';
import 'package:flutter_app/route/tip_route.dart';
import 'package:flutter_app/route/tip_route_2.dart';
import 'package:flutter_app/statemanager/state_manager.dart';
import 'package:flutter_app/switch_checkbox.dart';

/*void main() => runApp(new MaterialApp(
      title: 'title',
      home: new MyScaffold(),
    ));*/
void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        routes: {
          "tip_route": (context) => TipRoute(),
          "/tip_route_2": (context) => TipRoute2(
                text: "22",
              )
        },
        title: 'Welcome to Flutter1',
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("1111"),
          ),
          body: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Builder(
                  builder: (context) => Column(
                        children: <Widget>[
                          RaisedButton(
                              child: Text("输入框"),
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return InputText();
                                }));
                              }),
                          RaisedButton(
                              child: new Text("自动校验的输入框"),
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return InputTextValidate();
                                }));
                              }),
                          RaisedButton(
                              child: new Text("路由界面"),
                              onPressed: () {
                                Navigator.of(context).push(
                                    new MaterialPageRoute(builder: (context) {
                                  return new TipRoute();
                                }));
                              }),
                          RaisedButton(
                              child: Text("状态管理"),
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return StateManager();
                                }));
                              }),
                          RaisedButton(
                              child: Text("选择框"),
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return SwitchCheckbox();
                                }));
                              }),
                          RaisedButton(
                              child: Text("进度指示器"),
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return MyProgressIndicator();
                                }));
                              }),
                          RaisedButton(
                              child: Text("装饰容器"),
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return MyDecoratedBox();
                                }));
                              }),
                          RaisedButton(
                              child: Text("变换"),
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return MyTransform();
                                }));
                              }),
                          RaisedButton(
                              child: Text("基础界面"),
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return MyScaffold();
                                }));
                              }),

                        ],
                      )),
            ],
          ),
        ));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter1',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Column(
          children: <Widget>[
            new Text(
              'Hello World1',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  fontSize: 15,
                  foreground: Paint()..color = Colors.yellow,
                  decorationColor: Colors.yellow,
                  background: Paint()..color = Colors.blue),
            ),
            new Text(
              'Hello World2',
              textDirection: TextDirection.ltr,
            ),
            new Text('Hello World3'),
            new Icon(
              Icons.ac_unit,
              color: Colors.yellow,
              textDirection: TextDirection.rtl,
            ),
            new Image.asset(
              "assets/images/ic_avatar.png",
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
