import 'package:flutter/material.dart';

/**
 * 约束性布局
 */

class MyTransform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      home: Scaffold(
          appBar: AppBar(
            title: Text("变换"),
          ),
          body: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Row(
                  children: <Widget>[
                    Text("变换"),
                    Container(
                      color: Colors.black,
                      child: Transform(
                        transform: Matrix4.skewY(0.3),
                        alignment: Alignment.topRight,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          color: Colors.deepOrange,
                          child: Text("Apartment for rent"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  children: <Widget>[
                    Text("平移"),
                    Container(
                      color: Colors.red,
                      child: Transform.translate(
                        offset: Offset(10, 10),
                        child: Text("Apartment for rent"),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60),
                child: Row(
                  children: <Widget>[
                    Text("旋转"),
                    Container(
                      color: Colors.red,
                      child: Transform.rotate(
                        angle: 45,
                        child: Text("Apartment for rent"),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60),
                child: Row(
                  children: <Widget>[
                    Text("缩放"),
                    Container(
                      color: Colors.red,
                      child: Transform.scale(
                        scale: 0.5,
                        child: Text("Apartment for rent"),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
