import 'package:flutter/material.dart';
import 'package:flutter_app/route/tip_route_2.dart';

class TipRoute extends StatelessWidget {
  var result = "";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("接收参数"),
        ),
        body: new Column(
          children: <Widget>[
            new Builder(
                builder: (context) => new RaisedButton(
                    child: new Text("启动新界面"),
                    onPressed: () async {
                      result = await Navigator.of(context)
                          .push(new MaterialPageRoute(builder: (context) {
                        return TipRoute2(text: "结束界面");
                      }));
                      print("路由：$result");
                    })),
            new Builder(
                builder: (context) => new RaisedButton(
                    child: new Text("路由表启动界面"),
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed("/tip_route_2", arguments: "结束结束");
                    })),
            new Text(result)
          ],
        ),
      ),
    );
  }
}
