import 'package:flutter/material.dart';

class MyAnimation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAnimation();
  }
}

class _MyAnimation extends State<MyAnimation>
    with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this);

    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.ease);

    _animation = Tween(begin: 0.0, end: 300.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Animation"),
        ),
        body: Center(
          child: Image.asset(
            "assets/images/ic_avatar.png",
            width: _animation.value,
            height: _animation.value,
          ),
        ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
