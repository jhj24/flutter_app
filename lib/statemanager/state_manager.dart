import 'package:flutter/material.dart';
import 'package:flutter_app/statemanager/mix_state_manager.dart';
import 'package:flutter_app/statemanager/parent_state_manager.dart';
import 'package:flutter_app/statemanager/self_state_manager.dart';

class StateManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      home: Scaffold(
        appBar: AppBar(
          title: Text("状态管理"),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
                child: Text("Widget自身状态管理"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return SelfStateManager();
                  }));
                }),
            RaisedButton(
              child: Text("父Widget实现状态管理"),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ParentStateManager();
                }));
              },
            ),
            RaisedButton(
                child: Text("父子Widget共同管理"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return MixStateManager();
                  }));
                })
          ],
        ),
      ),
    );
  }
}
