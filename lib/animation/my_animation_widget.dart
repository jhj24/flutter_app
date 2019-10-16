import 'package:flutter/material.dart';

class MyAnimationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAnimationWidget();
  }
}

class _MyAnimationWidget extends State<MyAnimationWidget>
    with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this);

    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _animation = Tween(begin: 0.0, end: 300.0).animate(_controller);
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("动画"),
      ),
      body: AnimationImage(
        animation: _animation,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

class AnimationImage extends AnimatedWidget {
  AnimationImage({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    Animation<double> animation = listenable;

    return Image.asset(
      "assets/images/ic_avatar.png",
      width: animation.value,
      height: animation.value,
    );
  }
}
