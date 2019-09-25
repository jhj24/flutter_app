import 'package:flutter/material.dart';

class SelfStateManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SelfStateManager();
  }
}

//自身管理
class _SelfStateManager extends State<SelfStateManager> {
  var _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            _active ? "Active" : "InActive",
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        width: 200,
        height: 200,
        decoration: new BoxDecoration(
            color: _active ? Colors.lightGreen[700] : Colors.grey[600]),
      ),
    );
  }
}
