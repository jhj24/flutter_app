import 'package:flutter/material.dart';

class MyListener extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyListener();
  }
}

class _MyListener extends State<MyListener> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listener"),
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Listener(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tight(Size(300, 200)),
                  child: DecoratedBox(
                      decoration: BoxDecoration(color: Colors.blue)),
                ),
                onPointerDown: (event) {
                  print("listener0");
                },
              ),
              Listener(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tight(Size(200, 100)),
                  child: Center(
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.red)),
                  ),
                ),
                onPointerDown: (event) {
                  print("listener1");
                },
                behavior: HitTestBehavior.translucent,
              )
            ],
          )
        ],
      ),
    );
  }
}
