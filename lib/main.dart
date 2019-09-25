import 'package:flutter/material.dart';
import 'package:flutter_app/route/tip_route.dart';
import 'package:flutter_app/route/tip_route_2.dart';
import 'package:flutter_app/statemanager/state_manager.dart';
import 'package:flutter_app/switch_checkbox.dart';
import 'package:flutter_app/test.dart';

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
              new Text(
                'Hello World1' * 9,
                textDirection: TextDirection.ltr,
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
              new Builder(
                  builder: (context) => new RaisedButton(
                      child: new Text("xxx"),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Test();
                        }));
                      })),
              new Builder(
                  builder: (context) => new IconButton(
                      icon: new Icon(
                        Icons.ac_unit,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed("tip_route");
                      })),
              new Builder(
                  builder: (context) => new RaisedButton(
                      child: new Text("路由界面"),
                      onPressed: () {
                        Navigator.of(context)
                            .push(new MaterialPageRoute(builder: (context) {
                          return new TipRoute();
                        }));
                      })),
              Builder(
                  builder: (context) => new RaisedButton(
                      child: Text("状态管理"),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return StateManager();
                        }));
                      })),
              Builder(
                  builder: (context) => new RaisedButton(
                      child: Text("选择框"),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return SwitchCheckbox();
                        }));
                      }))
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
