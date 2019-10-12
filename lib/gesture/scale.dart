import 'package:flutter/material.dart';

class Scale extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Scale();
  }
}

class _Scale extends State<Scale> {
  double _width = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scale"),
      ),
      body: Center(
        child: GestureDetector(
          child: Image.asset(
            "assets/images/ic_splash.png",
            width: _width,
          ),
          onScaleUpdate: (details) {
            setState(() {
              //缩放倍数在0.8到10倍之间
              _width = 200 * details.scale.clamp(.5, 10.0);
            });
          },
        ),
      ),
    );
  }
}
